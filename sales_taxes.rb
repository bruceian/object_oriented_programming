class Item

  def initialize(item_qty, item_name, price)
    @item_qty = item_qty
    @item_name = item_name
    @price = price.to_f
  end

  def item_price
    "#{@item_qty} #{@item_name} at #{@price}"
  end

end

class Receipt < Item

  def initialize
  end

end
