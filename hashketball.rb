# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def players
  players = game_hash.keys.map do |location|
    game_hash[location][:players]
  end
  players.flatten
end

def num_points_scored(player_name)
  found_player = players.find do |player_hash|
    player_hash[:player_name] == player_name
  end
  found_player[:points]
end


def shoe_size(player_name)
  found_shoes = players.find do |player_hash|
    player_hash[:player_name] == player_name
  end
  found_shoes[:shoe]
end


def team_colors(team_name)
  #binding.pry
    if team_name == game_hash[:home][:team_name]
      return game_hash[:home][:colors]
    end
    if team_name == game_hash[:away][:team_name]
      return game_hash[:away][:colors]
    end
end

def team_names
  team = game_hash.keys.map do |location|
    game_hash[location][:team_name]
  end
  team.flatten
end

def player_numbers(team)
  #binding.pry
  count = 0
  while count < game_hash[:home][:players].length
    if team == game_hash[:home][:team_name]
      return game_hash[:home][:players][count][:number]
    end
    count += 1
  end
  while count < game_hash[:away][:players].length
    if team == game_hash[:away][:team_name]
      return game_hash[:away][:players][count][:number]
    end
    count += 1
  end
end

def player_stats(athlete)
  binding.pry
  count = 0
  while count < game_hash[:home][:players].length
    if athlete == game_hash[:home][:players][count][:player_name]
      return game_hash[:home][:players][count].shift()
    elsif athlete == game_hash[:away][:players][count][:player_name]
      return game_hash[:away][:players][count].shift()
  end
  count += 1
end

def big_shoe_rebounds
end
