require './goods'
# CLASSIFIER.RB - Figures out what

class Parser
  def initialize(product_string)
    @quantity = product_string.slice!(0,2)
    
    split_string = product_string.partition(/[\d]{1,2}\.[\d]{1,2}/) 
    @product = split_string[0].gsub(" at ", "") # Get rid of the trailing 'at' from our product name.
    @price = split_string[1]

    @tax = 0

    classify
  end




end

input1 = "1 imported magic bar at 0.85"

item1 = Classifier.new(input1)


# products  = [Goods.new("book",12.49, 0), Goods.new("music CD",14.99, 10), Goods.new("chocolate bar",0.85, 0)]
# products2 = [Goods.new("imported_chocolates",10.00,5), Goods.new("imported_perfume", 47.5, 15)] 

# products.each { |product| p product.calculate_tax }
