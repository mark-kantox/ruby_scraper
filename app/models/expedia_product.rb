class ExpediaProduct < ActiveRecord::Base
    validates_presence_of :productId, :title, :link
end
