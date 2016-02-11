module VerifyHelper
  require 'tesseract-ocr'

  #uses tessaract to check if id number appears on documents, if so, updates db and verifies user
  def verify_id_docs
    e = Tesseract::Engine.new { |e|
      e.language = :eng
      e.blacklist = '|'
    }

    if (get_path)
      @verified = e.text_for(get_path).strip.include? @p_user.id_number
    end

    if (@verified)
      @p_user.verified = true
      @p_user.save
    end

  end

  def get_path
    @image_path = 'public' +@p_user.id_slash_passport_pic.url(:original)
    if (@image_path.include? '?')
      @image_path.slice(0..(@image_path.index('?')-1))
    end
  end
end