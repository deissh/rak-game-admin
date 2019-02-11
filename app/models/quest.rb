class Quest < ApplicationRecord
    before_save :default_values
    def default_values
      self.sequence ||= 0
      self.npc_id ||= 0
      self.body ||= ''
    end
end
