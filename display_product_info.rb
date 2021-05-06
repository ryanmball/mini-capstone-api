require "http"

products = HTTP.get("http://localhost:3000/display_all_products")
# p products.parse
# p products.parse[0].values_at("id", "name")
display_products = []
products.parse.each { |product| display_products << product.values_at("id", "name")}
display_products.sort_by! { |product| product[0] }
display_products.each do |product|
  id = product[0]
  name = product[1]
  puts "ID: #{id}, Name: #{name}"
end

puts "Please enter the ID of the product you would like to display"
id = gets.chomp.to_i

product = HTTP.get("http://localhost:3000/display_product?id=#{id}")

p product.parse