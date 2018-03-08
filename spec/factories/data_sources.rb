FactoryBot.define do
  factory :data_source do
    username "user1"
    password "s0m3-s3cr3t-str1ng"
    db_server_name "localhost:3000"
    db_name "pies"
    association :data_source_type, factory: :data_source_type
  end
end