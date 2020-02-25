class Category < ApplicationRecord
 
 validates :name, presence: true
 
 has_many :thre_cates
 has_many :thres, through: :thre_cates, source: 'thre'
 
end
