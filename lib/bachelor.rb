def get_first_name_of_season_winner(data, season)
    data[season].each do |p_data| #iterates through all the people in season
        if p_data["status"] == "Winner"
            return p_data["name"].split(" ")[0]
        end
    end
end

def get_contestant_name(data, occupation)
    data.each do |season,p_data|
        p_data.each do |data|
            if data["occupation"] == occupation
                return data["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    people_same_hometown = []
    data.each do |season,p_data|
        p_data.each do |data|
            if data["hometown"] == hometown
                people_same_hometown.push(p_data)
            end
        end
    end
    people_same_hometown.length
end

def get_occupation(data, hometown)
    data.each do |season,p_data|
        p_data.each do |data|
            if data["hometown"] == hometown
                return data["occupation"]
            end
        end
    end
end

def get_average_age_for_season(data, season)
    age_array = []

    data[season].each do |p_data|
        age = p_data["age"].to_i
        age_array.push(age)

    end

    sum = age_array.reduce(:+) / age_array.size.to_f
    answer = sum.round
    answer
end
