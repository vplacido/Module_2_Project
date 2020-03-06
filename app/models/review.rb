class Review < ApplicationRecord
    # belongs_to :listing
    belongs_to :service

    # def self.hasReview(service, session_id)
    #     i = 0
    #     while i < Review.all.length do 
    #         # byebug
    #         if Review.all[i].service_id == service.service_id 
    #             if Service.find(Review.all[i].service_id).carts.length > 1
    #                 n = 0
    #                 while n < Service.find(Review.all[i].service_id).carts.length do 
    #                     if session_id == Service.find(Review.all[i].service_id).carts[n].user_id
    #                         return true 
    #                     end
    #                     n += 1
    #                 end
    #             else
    #                 if session_id == Service.find(Review.all[i].service_id).carts[0].user_id
    #                     puts true
    #                     return true
    #                 end
    #             end
    #             # return false 
    #         end
    #         i += 1
    #     end
    #     puts false
    #     return false
    # end

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
