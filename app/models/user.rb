class User < ApplicationRecord
 
 
 has_many :thres
 has_many :res
 
 has_secure_password
end
