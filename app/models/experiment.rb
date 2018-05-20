class Experiment < ApplicationRecord
    belongs_to :user
    belongs_to :lab
    belongs_to :sem
    belongs_to :branch
    belongs_to :collage 
end