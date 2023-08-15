class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item|
      item[:name]
  }.sort
  end

  def cheap
    @items.select { |item|
      item[:price] < 30.00
    }
  end

  def out_of_stock
    @items.select { |item|
      item[:quantity_by_size].empty?
    }
  end

  def stock_for_item(name)
    item = @items.find { |item| item[:name] == name }
    item ? item[:quantity_by_size] : nil
  end

  def total_stock
    total = 0
    @items.each do |item|
      item[:quantity_by_size].each do |_, quantity|
        total += quantity
      end
    end
    total
  end

  private
  attr_reader :items
end
