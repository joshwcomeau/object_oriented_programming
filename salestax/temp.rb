class Thing
  attr_accessor :arr, :rolo

  @@class_rolo = [14, 526]  

  def initialize
    # @rolo = [43, 54]
    #@arr = [4, 434]
  end
  
  def add_contact(name)
    @name = name
    @@rolo << name
  end
  def display
    @@class_rolo
  end

end


roloz = Thing.new

p roloz.display
