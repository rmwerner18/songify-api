class User < ApplicationRecord
    has_secure_password
    has_many :songs
    has_many :likes
    validates :username, uniqueness: { case_sensitive: false }
end
