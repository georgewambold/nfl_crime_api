# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Team.destroy_all
Position.destroy_all
CrimeCategory.destroy_all
LegalEncounter.destroy_all
Crime.destroy_all


1.times do
  created_player = Player.create({
    first_name: "Nigel",
    last_name: "Bradham"
    })

  created_crime_cat = CrimeCategory.create({
    category: "Gun"
    })

  created_encounter = LegalEncounter.create({
    encounter_type: "Arrested"
    })

  created_postion = Position.create({
    name: "LB"
    })

  created_team = Team.create({
    team_code: "PHI",
    team_name: "Eagles",
    team_city: "Philadelphia"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Nigel").where(last_name: "Bradham").take.id,
    team_id: Team.where(team_code: "PHI").take.id,
    position_id: Position.where(name: "LB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    # player_id: created_player.id,
    # team_id: created_team.id,
    # position_id: created_postion.id,
    # legal_encounter_id: created_postion.id,
    crime_categories: CrimeCategory.where(category: 'Gun'),
    description: "Accused of carrying loaded gun through airport security in Miami.",
    outcome: "Resolution undetermined",
    date_of_incident: "2016-10-02"
    })
end

1.times do
  created_player = Player.create({
    first_name: "Andrew",
    last_name: "Quarless"
    })

  # created_crime_cat = CrimeCategory.create({
  #   category: "Gun"
  #   })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  created_postion = Position.create({
    name: "TE"
    })

  created_team = Team.create({
    team_code: "GB",
    team_name: "Packers",
    team_city: "Green Bay"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Andrew").where(last_name: "Quarless").take.id,
    team_id: Team.where(team_code: "GB").take.id,
    position_id: Position.where(name: "TE").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'Gun'),
    description: "Accused of firing a gun in public in Miami Beach, a misdemeanor offense.",
    outcome: "Resolution undetermined",
    date_of_incident: "2015-07-04"
    })
end

1.times do
  created_player = Player.create({
    first_name: "Chris",
    last_name: "Johnson"
    })

  # created_crime_cat = CrimeCategory.create({
  #   category: "Gun"
  #   })
  #
  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  created_postion = Position.create({
    name: "RB"
    })

  created_team = Team.create({
    team_code: "NYJ",
    team_name: "Jets",
    team_city: "New York"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Chris").where(last_name: "Johnson").take.id,
    team_id: Team.where(team_code: "NYJ").take.id,
    position_id: Position.where(name: "RB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'Gun'),
    description: "Pulled over in Orlando, accused of misdemeanor gun offense after two guns were found in his vehicle.",
    outcome: "Case dropped by prosecutors.",
    date_of_incident: "2015-01-09"
    })
end

1.times do
  created_player = Player.create({
    first_name: "Troy",
    last_name: "Hill"
    })

  created_crime_cat = CrimeCategory.create({
    category: "DUI"
    })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  created_postion = Position.create({
    name: "CB"
    })

  created_team = Team.create({
    team_code: "LA",
    team_name: "Rams",
    team_city: "Los Angeles"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Troy").where(last_name: "Hill").take.id,
    team_id: Team.where(team_code: "LA").take.id,
    position_id: Position.where(name: "CB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'DUI'),
    description: "Suspected of drunken driving after crashing into a big rig on the freeway.",
    outcome: "Resolution undetermined.",
    date_of_incident: "2016-11-19"
    })
end

1.times do
  created_player = Player.create({
    first_name: "Isame",
    last_name: "Faciane"
    })

  # created_crime_cat = CrimeCategory.create({
  #   category: "DUI"
  #   })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  created_postion = Position.create({
    name: "OG"
    })

  created_team = Team.create({
    team_code: "MIN",
    team_name: "Vikings",
    team_city: "Minneapolis"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Isame").where(last_name: "Faciane").take.id,
    team_id: Team.where(team_code: "MIN").take.id,
    position_id: Position.where(name: "OG").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'DUI'),
    description: "Charged with drunken driving after being pulled over for driving around barricades.",
    outcome: "Resolution undetermined. Team released him later that week.",
    date_of_incident: "2016-10-12"
    })
end

1.times do
  created_player = Player.create({
    first_name: "Jabari",
    last_name: "Price"
    })

  # created_crime_cat = CrimeCategory.create({
  #   category: "DUI"
  #   })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  # created_postion = Position.create({
  #   name: "CB"
  #   })

  # created_team = Team.create({
  #   team_code: "MIN",
  #   team_name: "Vikings",
  #   team_city: "Minneapolis"
  #   })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Jabari").where(last_name: "Price").take.id,
    team_id: Team.where(team_code: "MIN").take.id,
    position_id: Position.where(name: "CB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'DUI'),
    description: "Pulled over for speeding, accused of misdemeanor drunken driving.",
    outcome: "Pleaded guilty to careless driving, 30 days home detention, one year probation, $300 fine.",
    date_of_incident: "2014-12-29"
    })
end


1.times do
  created_player = Player.create({
    first_name: "Tom",
    last_name: "Johnson"
    })

  created_crime_cat = CrimeCategory.create({
    category: "Trespassing"
    })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  created_postion = Position.create({
    name: "DT"
    })

  # created_team = Team.create({
  #   team_code: "MIN",
  #   team_name: "Vikings",
  #   team_city: "Minneapolis"
  #   })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Tom").where(last_name: "Johnson").take.id,
    team_id: Team.where(team_code: "MIN").take.id,
    position_id: Position.where(name: "DT").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'Trespassing'),
    description: "Police said he refused to leave a restaurant in Minneapolis after it closed. Police used a chemical spray and stun gun on him when they say he resisted.",
    outcome: "Acquitted by jury.",
    date_of_incident: "2014-10-05"
    })
end


1.times do
  created_player = Player.create({
    first_name: "Adam",
    last_name: "Jones"
    })

  created_crime_cat = CrimeCategory.create({
    category: "Disorderly Conduct"
    })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  # created_postion = Position.create({
  #   name: "CB"
  #   })

  created_team = Team.create({
    team_code: "CIN",
    team_name: "Bengals",
    team_city: "Cincinatti"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Adam").where(last_name: "Jones").take.id,
    team_id: Team.where(team_code: "CIN").take.id,
    position_id: Position.where(name: "CB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'Disorderly Conduct'),
    description: "He was the passenger in a car pulled over for speeding and was cited for disorderly conduct. The driver was charged with drunk driving.",
    outcome: "Paid $130 for fine and court costs.",
    date_of_incident: "2013-09-23"
    })
end

1.times do
  # created_player = Player.create({
  #   first_name: "Adam",
  #   last_name: "Jones"
  #   })

  created_crime_cat = CrimeCategory.create({
    category: "Assault"
    })

  # created_encounter = LegalEncounter.create({
  #   encounter_type: "Arrested"
  #   })

  # created_postion = Position.create({
  #   name: "CB"
  #   })

  # created_team = Team.create({
  #   team_code: "CIN",
  #   team_name: "Bengals",
  #   team_city: "Cincinatti"
  #   })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Adam").where(last_name: "Jones").take.id,
    team_id: Team.where(team_code: "CIN").take.id,
    position_id: Position.where(name: "CB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Arrested").take.id,
    crime_categories: CrimeCategory.where(category: 'Assault'),
    description: "Accused of punching a woman outside a Cincinnati bar on June 5. It is his eighth run-in with the law since 2005.",
    outcome: "Resolution undetermined.",
    date_of_incident: "2013-06-10"
    })
end

1.times do
  # created_player = Player.create({
  #   first_name: "Adam",
  #   last_name: "Jones"
  #   })

  created_crime_cat = CrimeCategory.create({
    category: "Coercion, gun"
    })

  created_encounter = LegalEncounter.create({
    encounter_type: "Charged"
    })

  # created_postion = Position.create({
  #   name: "CB"
  #   })

  created_team = Team.create({
    team_code: "TEN",
    team_name: "Titans",
    team_city: "Nashville"
    })

  created_crime = Crime.create({
    player_id: Player.where(first_name: "Adam").where(last_name: "Jones").take.id,
    team_id: Team.where(team_code: "TEN").take.id,
    position_id: Position.where(name: "CB").take.id,
    legal_encounter_id: LegalEncounter.where(encounter_type: "Charged").take.id,
    crime_categories: CrimeCategory.where(category: 'Coercion, gun'),
    description: "Surrendered in Las Vegas, charged with felony coercion in connection to strip club shooting that paralyzed a man.",
    outcome: "Pleaded no contest to conspiracy to commit disorderly conduct, agreed to testify against gunman. SENTENCE?",
    date_of_incident: "2007-06-21"
    })
end
