require "pry"

def get_first_name_of_season_winner(data, season)
    data.each do |season_number, contestants|
        if season_number == season
            contestants.each do |attribute|
            if attribute["status"] == "Winner"
                winner_name = attribute["name"].split(" ")
                return winner_name[0]
                end
            end
        end
    end
end

def get_contestant_name(data, occupation)
    data.each do |season_number, contestants|
        contestants.each do |attribute|
            if attribute["occupation"] == occupation
                return attribute["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    hometown_counter = 0
    data.each do |season_number, contestants|
        contestants.each do |attribute|
            if attribute["hometown"] == hometown
                hometown_counter += 1
            end
        end
    end
    hometown_counter
end

def get_occupation(data, hometown)
    data.each do |season_number, contestants|
        contestants.each do |attribute|
            if attribute["hometown"] == hometown
                return attribute["occupation"]
            end
        end
    end
end

def get_average_age_for_season(data, season)
    age_array = []
    data.each do |season_number, contestants|
        if season_number == season
            contestants.each do |attribute|
                age_array << attribute["age"].to_f
            end
        end
    end
    (age_array.reduce(:+)/age_array.length).round
end
