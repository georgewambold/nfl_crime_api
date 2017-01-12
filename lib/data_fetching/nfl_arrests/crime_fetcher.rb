module DataFetching
  module NFLArrests
    class CrimeFetcher

      attr_reader :client, :teams

      def initialize
        @client = ExternalAPIs::NFLArrests::APIClient.new
        @teams = Team.all
      end

      def update_crimes
        teams.each do |team|
          crimes = client.arrests_for_team(team.team_code)          
          crimes.each do |crime|

            player = find_or_create_player(crime["Name"])
            categories = find_or_create_category(crime["Category"])
            encounter = find_or_create_encounter(crime["Encounter"])
            position = find_or_create_position(crime["Position"])
            date_of_incident = DateTime.parse(crime["Date"])
            description = crime["Description"]
            outcome = crime["Outcome"]


            new_crime_results = Crime.where(player: player, 
                                            position: position,
                                            legal_encounter: encounter, 
                                            team: team, 
                                            description: description, 
                                            outcome: outcome, 
                                            date_of_incident: date_of_incident
            )

            crime_categories = new_crime_results.map do |c|
              c.crime_categories.sort
            end

            unless crime_categories.include?(categories.sort)
              Crime.create(
              player: player,
              position: position,
              legal_encounter: encounter,
              team: team,
              crime_categories: categories,
              description: description,
              outcome: outcome,
              date_of_incident: date_of_incident
            )
            end
          end
        end
      end

      private 

      def find_or_create_player(name)
        name ||= "N/A N/A"
        player_name = name.split(" ")
        Player.find_or_create_by(first_name: player_name[0], last_name: player_name[1])
      end

      def find_or_create_category(categories)
        categories.split(", ").map do |cc|
          CrimeCategory.find_or_create_by(category: cc)
        end
      end

      def find_or_create_encounter(encounter)
        LegalEncounter.find_or_create_by(encounter_type: encounter)
      end 

      def find_or_create_position(position)
        Position.find_or_create_by(name: position)
      end
    end
  end
end