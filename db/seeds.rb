# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database
puts "Cleaning the database..."
Restaurant.destroy_all

# 2. Creating the instances of the restaurant
puts "Creating restaurants..."
Restaurant.create!(name: "OTacos", address: "10 Rue du bon repas, Paris", category: "italian")
puts "Created OTacos"
Restaurant.create!(name: "MiamMiam!", address: "9 Av de la faim, Lyon", category: "belgian")
puts "Created MiamMiam!"
Restaurant.create!(name: "Good ol' Bar", address: "9 St Fish & Chips, London", category: "french")
puts "Created Good ol' Bar"
Restaurant.create!(name: "Itadakimasu", address: "2 A cool Japanese Street", category: "japanese")
puts "Created Itadakimasu"
Restaurant.create!(name: "Supa Good", address: "9 Chinatown", category: "chinese")
puts "Created Supa Good"

# 3. Display the finish message
puts "Finished! Created #{Restaurant.count} restaurants."
