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
Optative.create title: 'Ruby on Rails', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', professor: "Pedro Quintero", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'Procesamiento de Imagenes', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', professor: "Eric Nordelo", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "computacion", enrollment: 30
Optative.create title: 'Diseño Web', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', professor: "Juan Carlos Cremata", duration: 64, schedule: "9:00 a 1:00", year: 3, program: "matematica", enrollment: 30

Year.delete_all
Year.create value: 1, max_optatives: 0, semester: 1, program: "Matemática"
Year.create value: 1, max_optatives: 0, semester: 2, program: "Matemática"
Year.create value: 2, max_optatives: 0, semester: 1, program: "Matemática"
Year.create value: 2, max_optatives: 0, semester: 2, program: "Matemática"
Year.create value: 3, max_optatives: 0, semester: 1, program: "Matemática"
Year.create value: 3, max_optatives: 1, semester: 2, program: "Matemática"
Year.create value: 4, max_optatives: 2, semester: 1, program: "Matemática"
Year.create value: 4, max_optatives: 2, semester: 2, program: "Matemática"
Year.create value: 4, max_optatives: 2, semester: 1, program: "Matemática"
Year.create value: 4, max_optatives: 2, semester: 2, program: "Matemática"

Year.create value: 1, max_optatives: 0, semester: 1, program: "Computación"
Year.create value: 1, max_optatives: 0, semester: 2, program: "Computación"
Year.create value: 2, max_optatives: 0, semester: 1, program: "Computación"
Year.create value: 2, max_optatives: 0, semester: 2, program: "Computación"
Year.create value: 3, max_optatives: 0, semester: 1, program: "Computación"
Year.create value: 3, max_optatives: 1, semester: 2, program: "Computación"
Year.create value: 4, max_optatives: 2, semester: 1, program: "Computación"
Year.create value: 4, max_optatives: 2, semester: 2, program: "Computación"
Year.create value: 4, max_optatives: 2, semester: 1, program: "Computación"
Year.create value: 4, max_optatives: 2, semester: 2, program: "Computación"