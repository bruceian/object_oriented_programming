class Item

attr_reader :item_qty, :item_name, :price, :category, :imported

  def initialize(item_qty, item_name, price, category, imported)
    @item_qty = item_qty
    @item_name = item_name
    @price = price
    @category = category
    @imported = imported
  end

  def sales_tax
    if @category == "book"
      @price * 0
    elsif @category == "food"
      @price * 0
    elsif @category == "medical"
      @price * 0
    else
      @price * 0.1
    end
  end

  def import
    if @imported == "imported"
      @price * 0.05
    else
      @price * 0
    end
  end

  def print_items
    "#{@item_qty} #{@item_name} at #{@price}"
  end

end

class Receipt  Item

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

 def print_receipt
   @items.each do |item|
     return "#{item.item_qty} #{item.item_name}: #{(item.price + item.import + item.sales_tax).round (2)}"
      end
 end
end

i = Item.new(1, "book", 12.49, "book", "imported")
r = Receipt.new
r.add_item(i)
r.print_receipt
