FactoryBot.define do
  factory :chart do
    position_x 10
    position_y 10
    width 1920
    height 1080
    association :dashboard, factory: :dashboard
    association :data_source, factory: :data_source
  end
end