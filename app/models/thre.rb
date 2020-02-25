class Thre < ApplicationRecord
 
 belongs_to :user
 has_many :res
 
 has_many :thre_cates
 has_many :categories, through: :thre_cates, source: 'category'
 
end
