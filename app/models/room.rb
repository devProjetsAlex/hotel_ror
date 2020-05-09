class Room < ApplicationRecord
    validates :room_name, presence:true, length: {minimum:3, maximum:100}
    validates :room_description, presence:true
    validates :room_vue, presence:true
    validates :room_price, presence:true
    validates :room_vacancy, presence:true
end
