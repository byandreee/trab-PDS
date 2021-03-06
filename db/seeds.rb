# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# the function works as abilities that website has to know about this labs
# report of computers => a
# computers map => b
# reports and statistics => c
# embedded system => d
# authorized access => e
#   for biometric access
Laboratory.destroy_all
lso = Laboratory.create(title: 'Laboratório de Sistemas Operacionais', mantainer: 'Profa. Dra. Sahudy', email: 'dcomp@ufscar.br', linkDocs: 'www.google.com.br', initials: 'LSO', function: 'abcd')
#lasid = Laboratory.create(title: 'Laboratório de Sistemas Digitais', mantainer: 'Profa. Dra. Yeda', email: 'dcomp@ufscar.br', linkDocs: 'www.google.com.br', initials: 'LASiD')
#lec = Laboratory.create(title: 'Laboratório de Ensino de Computação', mantainer: 'Profa. Dra. Sahudy', email: 'dcomp@ufscar.br', linkDocs: 'www.google.com.br', initials: 'LEC')
leris = Laboratory.create(title: 'Laboratório de Estudo de Redes, Inovação e Software', mantainer: 'Prof. Dr. Fabio Verdi', email: 'verdi@ufscar.br', linkDocs: 'www.google.com.br', initials: 'LERIS', function: 'abcde')

# you must insert a status to the new laboratory
# if you ignore this warning, the view will bug :(
lso.status.create(:isOpen => true);
#lasid.status.create(:isOpen => false);
#lec.status.create(:isOpen => false);
leris.status.create(:isOpen => false);

#inserting computers to the labs
for k in 1..27
  a = lso.computers.create(:physical_id => k, :status => "maintenance")
  a.computer_status.create(:status => "available")
end

#inserting computers to the labs
for k in 1..6
  a = leris.computers.create(:physical_id => k, :status => "maintenance")
  a.computer_status.create(:status => "available")
end
