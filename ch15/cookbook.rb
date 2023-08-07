class Cookbook
    attr_accessor :title, :author
    def initialize
        @recipes = []
    end
    def method_missing(m, *args, &blk)
        @recipes.public_send(m, *args, &blk)
    end
end

class Recipe
    attr_accessor :main_ingredient
    def initialize(main_ingredient)
        @main_ingredient = main_ingredient
    end
    def to_s
        @main_ingredient
    end
end

c = Cookbook.new
cake = Recipe.new("flour")
chicken = Recipe.new("chicken")
c << cake
c << chicken

c.each {|x| puts x}