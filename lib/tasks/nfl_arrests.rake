namespace :nfl_arrests do
  desc "Pull and update all team names then use those current team names to update crimes"
  task :update => :environment do
    tf = DataFetching::NFLArrests::TeamFetcher.new
    tf.update_teams

    cf = DataFetching::NFLArrests::CrimeFetcher.new
    cf.update_crimes
  end
end