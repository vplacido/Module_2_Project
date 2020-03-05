class Review < ApplicationRecord
    # belongs_to :listing
    belongs_to :service

    def self.hasReview(service, session_id)
        i = 0
        while i < Review.all.length do 
            # byebug
            if Review.all[i].service_id == service.service_id && session_id == Service.find(Review.all[i].service_id).seller_id
                puts true
                return true
            end
            i += 1
        end
        puts false
        return false
    end
end
