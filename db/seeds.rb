require 'faker'


10.times do
    City.create(name: Faker::Address.city)
end

10.times do
    Specialty.create(name: Faker::Cannabis.health_benefit)
end

10.times do
    Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
end

10.times do 
        Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, city: City.all.sample)
end

10.times do
        JoinTableDoctorsSpecialty.create(doctor_id: rand(1..10),specialty: Specialty.all.sample)
end

10.times do
        Appointment.create(date: Faker::Time.between_dates(from: Date.today - 60, to: Date.today, period: :day), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end
