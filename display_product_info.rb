require "http"

products = HTTP.get("http://localhost:3000/products")
# pp products.parse
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

product = HTTP.get("http://localhost:3000/products/#{id}")

pp product.parse

puts "Would you like to add another product to the database? Enter Y/N"

answer = gets.chomp.upcase
if answer == "Y"
  puts "Name:"
  name = gets.chomp
  puts "Price:"
  price = gets.chomp.to_i
  puts "Image URL:"
  image_url = gets.chomp
  puts "Description:"
  description = gets.chomp

  new_product = HTTP.post("http://localhost:3000/products", :params => {:name => name, :price => price, :image_url => image_url, :description => description})
end