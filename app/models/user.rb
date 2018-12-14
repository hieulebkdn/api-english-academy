class User < ApplicationRecord
  has_many :invoices
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attr_accessor :remember_token

  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 5}, presence: true, allow_nil: true
  validates :name,  presence: true

  has_secure_password

  # Returns the hash digest of the given string.
  def self.digest string
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create string, cost: cost
  end

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end

   # Returns true if the given token matches the digest.
   def authenticated? attribute, token
    digest = send "#{attribute}_digest"
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password? token
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
end
