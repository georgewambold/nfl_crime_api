FactoryGirl.define do 
  factory :crime do 
    player
    team
    legal_encounter
    position
    description "Got too turned up at a River North nightclub"
    outcome  "Kicked out of da clerb and subsequently arrested"
    date_of_incident Date.today
  end
end