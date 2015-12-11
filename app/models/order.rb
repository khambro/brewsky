class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items


  def total_items
    total_items = 0
     items.each do |n|
       total_items += n.quantity
     end
     total_items
  end


end
