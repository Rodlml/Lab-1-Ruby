class Dessert
	@@cant = 0

	def initialize(name, calories)
      @name = name
      @calories = calories
      @size = 0
      @@cant += 1
    end

    def self.count
    	return @@cant
    end

    def name
    	return @name
    end

    def calories
    	return @calories
    end

    def size
    	return @size
    end

    def setName(name)
    	@name = name
    end

    def setCalories(cal)
    	@calories = cal
    end

    def setSize(size)
    	@size = size
    end
    
    def healthy?
      return @calories < 200
    end
    
    def delicious?
      return true
    end
    
    def to_s
      return "Dessert: #{@name}, Calories: #{@calories}, Size: #{@size}"
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
      super(name, calories)
      @flavor = flavor
    end

    def flavor
    	return @flavor
    end

    def setFlavor(f)
    	@flavor = f
    end

    def delicious?
 		if @flavor == "black licorice"
 			return false
 		else
 			return true
 		end
    end
end
