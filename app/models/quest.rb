class Quest < ApplicationRecord
    belongs_to :npc
    has_many :answer
end
