class Thre < ApplicationRecord
 
 belongs_to :user
 has_many :res
 has_many :haves
 
end
