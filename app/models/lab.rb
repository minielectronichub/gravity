class Lab < ApplicationRecord
  has_many :experiments
  belongs_to :sem
  belongs_to :branch
end