class User < ActiveRecord::Base
  # devise :database_authenticatable, :registerable, :recoverable, 
	# 	:rememberable, :trackable, :validatable

  has_many :converations, :foreign_key => :sender_id

  validates :email, :session_token, presence: true
  validates :password, length: { minimum: 8, allow_nil: true}
  validates :email, uniqueness: true

  attr_reader :password
  after_initialize :ensure_session_token

  has_many :sent_emails,
    class_name: "ElectronicMail",
    foreign_key: :author_id

  def received_emails
    ElectronicMail.all
            .where('electronic_mails.to = ? AND is_draft = false', self.email)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    user.try(:is_password?, password) ? user : nil                                #invokes the public method whose name goes as the first argument just like public_send, except that it the receiver does not respond to it the call returns nil rather than raising an exception
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  def inbox_count
    self.received_emails.where(is_draft: "false", is_read: "false").length
  end

  def draft_count
    self.sent_emails.where(is_draft: true).length
  end

  protected
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
