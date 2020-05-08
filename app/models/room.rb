class Room < ApplicationRecord
    validate :room_name, presence:true, length: {minimum:3, maximum:100}
    validate :room_description, presence:true
    validate :room_vue, presence:true
    validate :room_price, presence:true
    validate :room_vacancy, presence:true
end
