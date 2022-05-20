class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable


    # Enum representing user roles - set as User (0) as default when created
    enum role: %i[user, admin]


    # Email Validation
    validates :email, format: URI::MailTo::EMAIL_REGEXP



    # Authenticate Method taken from the Devise documentation
    def self.authenticate(email, password)
        user = User.find_for_authentication(email: email)
        user&.valid_password?(password) ? user : nil
    end
end
