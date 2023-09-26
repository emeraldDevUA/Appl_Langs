# Підключення додаткових Файлів( файли класів )
require './solid_body.rb'
require './color.rb'
# Друк властивостей першої комбінації
body = Sphere.new(Color_RED.new)
body.print_data
puts""
# Друк властивостей двугої комбінації
body = Cube.new(Color_Blue.new)
body.print_data