FactoryBot.define do
 factory :user do
   username "pgrand"
   email "pgrand@miuandes.cl"
   password "tgraydas123"
 end

 factory :message do
   user_id 1
   date Date.parse("6/6/2017")
   content "Messege"
 end

# Add other factories in here
end