require 'open-uri'
require 'faker'

puts "Creando 20 Empleados"
20.times do
  Empleado.create!( nombres: Faker::Name.first_name, apellido_paterno: Faker::Name.last_name, apellido_materno: Faker::Name.last_name, rfc_corto: Faker::Number.number(digits: 8), administracion: Faker::Religion::Bible.quote, curp:Faker::Number.number(digits: 18), celular: Faker::PhoneNumber.phone_number_with_country_code, alergia:Faker::Crypto.sha256, ip_domicilio:Faker::Address.city, mac_adress:Faker::Number.number(digits: 18), cp_domicilio:Faker::Address.zip_code, padecimiento:Faker::Emotion.adjective, tipo_sangre:Faker::Blood.type, medicamento:Faker::Hacker.noun, num_empleado:Faker::Number.number(digits: 18))

end

puts "Se crearon 20 Empleados"

puts "Creando 10 Actividades"
10.times do
  Actividad.create!( nombre_actividad: Faker::Appliance.brand, descripcion_actividad: Faker::Appliance.equipment)

end

puts "Se crearon 10 Actividades"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
