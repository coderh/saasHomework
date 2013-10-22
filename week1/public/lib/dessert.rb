class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name 
  attr_accessor :calories

  def healthy?
    calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    super(flavor + " " + "jelly bean", 5)
    @flavor = flavor
  end

  attr_accessor :flavor

  def delicious?
    if (flavor == 'licorice')
      false 
    else
      true
    end
  end
end
