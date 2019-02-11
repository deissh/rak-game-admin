require "administrate/base_dashboard"

class QuestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    npc_id: Field::Number,
    sequence: Field::Number,
    body: Field::Text,
    answer1: Field::Text,
    answer2: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :npc_id,
    :sequence,
    :body,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :npc_id,
    :sequence,
    :body,
    :answer1,
    :answer2,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :npc_id,
    :sequence,
    :body,
    :answer1,
    :answer2,
  ].freeze

  # Overwrite this method to customize how quests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(quest)
  #   "Quest ##{quest.id}"
  # end
end
