class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    def activities
        self.signups.map do |signup|
            activity_array = signup.activity.name
            activity_array
        end
    end

    validates :name, uniqueness: true 
    validates :age, inclusion: 8..18


end
