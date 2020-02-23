class User < ApplicationRecord
 
 
 has_many :thre
 has_many :re
 
 has_secure_password
end
