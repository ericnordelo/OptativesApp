# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create username: 'admin', email: 'admin@host.com', password: 'administrator'
User.first.add_role :admin 

Optative.delete_all
Optative.create title: 'Ruby on Rails', description: 'large description here...', professor: "Pedro Quintero", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30
Optative.create title: 'optativo', description: 'large description here...', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30