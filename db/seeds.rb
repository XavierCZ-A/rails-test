# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

StoreSection.create(name: 'Carne')
StoreSection.create(name: 'Lácteos')
StoreSection.create(name: 'Panadería')
StoreSection.create(name: 'Alimentos')
StoreSection.create(name: 'Farmacia')
