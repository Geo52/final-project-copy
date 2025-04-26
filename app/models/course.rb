class Course < ApplicationRecord
    validates_presence_of :crn
    validate :capacity_maximum

    # custom validator
    def capacity_maximum
        #if it is not null, if it was null then we can't compare it to zero
        if self.capacity != nil
            if self.capacity > 50
                errors.add(:capacity, "can't be greater than 50")
            end
        end
    end

end
