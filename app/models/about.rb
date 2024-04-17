class About < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["title", "content", "created_at", "updated_at", "message_cont", "message_eq", "message_start", "message_end", "History_cont", "History_eq", "History_start", "History_end"]
  end
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
