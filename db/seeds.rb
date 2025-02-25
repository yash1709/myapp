# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


# student = Student.create(
#   first_name: "Yash",
#   last_name: "baheti",
#   email: "yash@exmaple.com"
# )

# student = Student.new(
#   first_name: "Sushil",
#   last_name: "baheti",
#   email: "sushil@exmaple.com"
# )

# student.save

20.times do |i|
  puts "Creating Students #{i+1}"
  Student.create(
    first_name: "student #{i+1}",
    last_name: "lname #{i+1}",
    email: "student#{i+1}@example.com"
)
end


