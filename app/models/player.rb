class Player < ApplicationRecord
    has_many :infantries
    has_many :cavalries
    has_many :rangeds
    belongs_to :user
end
