require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  status = []
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant_arr|
        contestant_arr.each do |category, value|
          if category == "name"
            name << value
          end
          if category == "status"
            status << value
          end
        end
      end
    end
  end
  status.each do |x|
    if x == "Winner"
      return name[status.index(x)].split(" ")[0]
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  name = []
  occupations = []
  data.each do |season_num, contestants|

      contestants.each do |contestant_arr|
        contestant_arr.each do |category, value|
          if category == "name"
            name << value
          end
          if category == "occupation"
            occupations << value
          end
        end
      end

  end
  occupations.each do |x|
    if x == occupation
      return name[occupations.index(x)]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  name = []
  hometowns = []
  same_home = []
  data.each do |season_num, contestants|

      contestants.each do |contestant_arr|
        contestant_arr.each do |category, value|
          if category == "name"
            name << value
          end
          if category == "hometown"
            hometowns << value
          end
        end
      end

  end
  hometowns.each do |x|
    if x == hometown
      same_home << x
    end
  end
  same_home.length
end

def get_occupation(data, hometown)
  # code here
  hometowns = []
  occupations = []
  data.each do |season_num, contestants|

      contestants.each do |contestant_arr|
        contestant_arr.each do |category, value|
          if category == "hometown"
            hometowns << value
          end
          if category == "occupation"
            occupations << value
          end
        end
      end

  end
  hometowns.each do |x|
    if x == hometown
      return occupations[hometowns.index(x)]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = []
  final_age = []

  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant_arr|
        contestant_arr.each do |category, value|
          if category == ("age" || "Age")
            age << value
          end
        end
      end
    end
  end
  age.each do |x|
    final_age << x.to_f
  end

  avg = final_age.reduce(:+) / final_age.length
  avg.round

end
