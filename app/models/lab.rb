class Lab < ApplicationRecord
  has_many :experiments
  belongs_to :sem
end