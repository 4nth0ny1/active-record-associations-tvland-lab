class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows

    def full_name

    end 

    def list_roles
        self.characters.first
        self.shows.first
    end 

end