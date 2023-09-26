#
#Абстракція тіла, має поле кольору, що також є абстрактим, тому відділено від реалізації
# Це дає змогу модифікувати надалі класи без зміни, наприклад, додати призму чи еліпсоїд та
# змінювати їх кольори
#

class SolidBody
  attr_accessor :color

  def initialize(color)
    @color = color;
  end

  def print_data
    print"I'm "
  end
end



class Sphere < SolidBody

  def print_data
    super
    print"a "
    color.print_color
    print" Sphere"
  end

end

class Cube < SolidBody

  def print_data
    super
    print"a "
    color.print_color
    print" Cube"
  end

end