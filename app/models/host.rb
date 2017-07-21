class Host < ApplicationRecord
	# attr_accessor :name, :email
	has_many :listings
	has_secure_password
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :email, uniqueness: true
	validates :email, presence: true
	validates :password_digest, length: { minimum: 3 }

end
