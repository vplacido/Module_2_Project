class Review < ApplicationRecord
    # belongs_to :listing
    belongs_to :service

    def self.hasUser(s_id, u_id)
        i = 0
        while i < Review.all.length do
            if Review.all[i][:user_id] == u_id && Review.all[i][:service_id] == s_id
              return true
            end
            i += 1
        end
        return false
    end

    def self.getReview(s_id, u_id)
        i = 0
        while i < Review.all.length do
            if Review.all[i][:user_id] == u_id && Review.all[i][:service_id] == s_id
              return Review.all[i]
            end
            i += 1
        end
    end
end
