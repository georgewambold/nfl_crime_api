module DataFetching
  module NFLArrests
    class TeamFetcher

      attr_reader :client, :teams

      def initialize
        @client = ExternalAPIs::NFLArrests::APIClient.new
        @teams = client.teams
      end

      def update_teams
        # If the team data changes for a specific team, it will create a second record for that team
        # which is not accurate.
        teams.each do |team|
          Team.find_or_create_by(
            team_code: team["Team"].strip,
            team_name: team["Team_name"],
            team_city: team["Team_city"]
          )
        end
      end
    end
  end
end