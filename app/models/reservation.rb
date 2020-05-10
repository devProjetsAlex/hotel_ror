class Reservation < ApplicationRecord
    validates :date, presence: true
    validates :room, presence: true
    validates :client_id, presence:true
    validates :client_email, presence: true  
end
