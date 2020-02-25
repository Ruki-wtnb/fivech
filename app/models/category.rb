class Category < ApplicationRecord
 
 has_many :thre_cates
 has_many :thres, through: :thre_cates, source: 'thre'
 
end
