class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows

    def full_name
        Actor.select(first_name).select(last_name)
    end 

    def list_roles
        self.characters.first
        self.shows.first
    end 

end