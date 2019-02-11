class User < ApplicationRecord
    before_save :default_values
    def default_values
      self.points ||= 0
      self.quest_count ||= 0
    end
end
