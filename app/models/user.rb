class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :legals      
   has_many :comments

   # # validates :name, presence: true, uniqueness: 
   #           {case_sensitive: false}, length: {minimum: 3, maximum: 25 }
   
   VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
          
end
