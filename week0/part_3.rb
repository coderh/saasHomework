class BookInStock

  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def isbn
    @isbn
  end

  def price=(price)
    @price = price
  end

  def price
    @price
  end
  
  def price_as_string
    "$" + "%.2f" % @price
  end
end
