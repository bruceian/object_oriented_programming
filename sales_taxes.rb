class Item

  def initialize(item_qty, item_name, price, item_type)
    @item_qty = item_qty
    @item_name = item_name
    @price = price.to_f
    @item_type = item_type
  end

  def print_items
    "#{@item_qty} #{@item_name} at #{@price}"
  end

  def apply_tax
    if @item_type == "imported"
      @price * 1.05
    elsif @item_type == "book"
      @price
    elsif @item_type == "food"
      @price
    elsif @item_type == "medical"
      @price
    else
      @price * 1.10
    end
  end

  def print_receipt
    "#{@item_qty} #{@item_name}: #{apply_tax}"
  end

end

class Receipt


end
