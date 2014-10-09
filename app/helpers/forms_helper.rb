module FormsHelper
   class Continent < ActiveRecord::Base
  has_many :countries
  # attribs: id, name
end

class Country < ActiveRecord::Base
  belongs_to :continent
  # attribs: id, name, continent_id
end

class City < ActiveRecord::Base
  belongs_to :country
  # attribs: id, name, country_id
end
end
