class Product < ApplicationRecord
  validates :name, :price, :stock_quantity, presence: true

  def uniqueProducts
    @count = Product.all.count
  end

  def averagePrice
    @average = ((Product.average(:price)).to_f).round(2)
  end

  def countInventory
    @total_stock = Product.sum(:stock_quantity)
  end
end
