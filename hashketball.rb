require "pry"

# Write your code here!

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
          "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end



def num_points_scored(player_name)
  
  game_hash.each do |team, details|
    details.each do |details, player_info|
      if details == :players
        
        player_info.each do |name, stats|
          if name == player_name
            return stats[:points]
          end
        end
      end
    
    end
  end

end

def shoe_size(player_name)
  
  game_hash.each do |team, details|
    details.each do |details, player_info|
      if details == :players
        
        player_info.each do |name, stats|
          if name == player_name
            return stats[:shoe]
          end
        end
      end
    
    end
  end

end



def team_colors(name_of_team)
  
  game_hash.each do |team, details|
    details.each do |attributes, info|
      if info == name_of_team
        return details[:colors]
      end
    end

  end

end

def team_names
  array = []
  game_hash.each do |team, details|
    details.each do |attributes, info|
      if attributes == :team_name
        array.push(info)
      end
    end

  end
array
end



def player_numbers(team_name)
  array = []
  game_hash.each do |team, details|
    details.each do |attributes, info|
      if info == team_name
        details.each do |attributes, info|
          if attributes == :players
            info.each do |player_name, stats|
                array.push(stats[:number])
            end
          end
        end
      end
    end
  end
 array   
end

def player_stats(name_of_player)
  
   game_hash.each do |team, details|
    details.each do |details, player_info|
      if details == :players
        
        player_info.each do |name, stats|
          if name == name_of_player
            return stats
          end
        end
        
      end
    end
  end

end



def big_shoe_rebounds
  largest_shoe = game_hash[:home][:players]["Alan Anderson"][:shoe]
  num_rebounds = game_hash[:home][:players]["Alan Anderson"][:rebounds]
  
  game_hash.each do |team, details|
    details.each do |attributes, info|
      if attributes == :players
        info.each do |name, stats|
          if stats[:shoe] > largest_shoe
            largest_shoe = stats[:shoe]
            num_rebounds = stats[:rebounds]
          end
        end
      end
    end
  end
  num_rebounds
end

def player_by_number(number)
  game_hash.each do |team, details|
    details.each do |attributes, info|
      if attributes == :players
        info.each do |name, stats|
          if stats[:number] == number
            return name
          end
        end
      end
    end
  end
  return "Not found."
end

Pry.start

