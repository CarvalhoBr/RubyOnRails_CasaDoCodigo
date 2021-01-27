class User < ApplicationRecord
	validates_presence_of :email, :full_name, :location, :password
	validates_confirmation_of :password
	validates_lenght_of :bio, :minimum => 30, :allow_blank => false
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	validates_uniqueness_of :email
end
