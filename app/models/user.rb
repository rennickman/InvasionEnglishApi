class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable


    # Enum representing user roles - set as User (0) as default when created
    enum role: %i[user, admin]
end
