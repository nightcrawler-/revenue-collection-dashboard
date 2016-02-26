class PUser < ActiveRecord::Base
  attr_accessor :remember_token, :activation_token

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  before_save :downcase_email
  before_create :create_activation_digest

  has_secure_password

  has_attached_file :avatar, styles: {medium: '300x300>', thumb: '100x100>'}, default_url: '/images/:style/missing.jpg'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_attached_file :id_slash_passport_pic, styles: {medium: '400x400>', thumb: '100x100>'}, default_url: '/images/:style/missing_id.jpg'
  validates_attachment_content_type :id_slash_passport_pic, content_type: /\Aimage\/.*\Z/


  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  # Returns a random token.
  def PUser.new_token
    SecureRandom.urlsafe_base64
  end

  # Returns the hash digest of the given string.
  def PUser.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Converts email to all lower-case.
  def downcase_email
    self.email = email.downcase
  end

  # Creates and assigns the activation token and digest.
  def create_activation_digest
    self.activation_token = PUser.new_token
    self.activation_digest = PUser.digest(activation_token)
  end


end
