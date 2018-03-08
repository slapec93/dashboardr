class Chart < ApplicationRecord
  belongs_to :dashboard
  belongs_to :data_source
end
