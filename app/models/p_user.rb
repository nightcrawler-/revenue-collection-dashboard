class PUser < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  has_secure_password

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.jpg'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_attached_file :id_slash_passport_pic, styles: { medium: '400x400>', thumb: '100x100>' }, default_url: '/images/:style/missing_id.jpg'
  validates_attachment_content_type :id_slash_passport_pic, content_type: /\Aimage\/.*\Z/

end
