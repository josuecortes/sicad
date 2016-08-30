class Agenda < ActiveRecord::Base
    belongs_to :user
    validates_date :data
    validates_time :hora
end
