class Show < ActiveRecord::Base
  
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
    def actors_list
        # Actor.full_name        
        
        self.actors.map{|act| "#{act.first_name}".concat " #{act.last_name}"}
        
        
    end
    # def list_roles
    #     roles = []
    #     array_of_characters = self.characters.map {|character| character.name}
    #     array_of_shows = self.shows.map {|shows| shows.name}
    #     role = array_of_characters.concat array_of_shows
    #     roles << role.join(" - ")
    #     roles
    # end

end