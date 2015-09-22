class Type < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name
end
