class Ability < ActiveRecord::Base
    # belongs_to :pokemon
  extend FriendlyId
  friendly_id :name
end
