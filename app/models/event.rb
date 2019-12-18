class Event < ApplicationRecord
  # serialize :payload, HashSerializer
  store_accessor :payload, :consent_categories, :tealium_event

  
end
