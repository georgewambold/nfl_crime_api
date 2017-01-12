module ExternalAPIs
  module NFLArrests
    class APIClient
      include HTTParty
      base_uri 'http://nflarrest.com/api'

      def teams
        self.class.get("/v1/team/")
      end

      def arrests_for_team(team_code)
        self.class.get("/v1/team/arrests/" + team_code.downcase)
      end
    end
  end
end