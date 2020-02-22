class User < ApplicationRecord
 
 
 has_many :thre
 
 has_secure_password
end
