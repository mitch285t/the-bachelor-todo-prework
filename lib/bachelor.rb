def get_first_name_of_season_winner(data, season)
  data[season].each do |person_hash|
   if person_hash["status"] == "Winner"
     return person_hash["name"].split()[0]
   end
 end
 end
  def get_contestant_name(data, occupation)  
  data.each do |season, person_hash|
    person_hash.each do |person_hash|
      if person_hash["occupation"] == occupation 
        return person_hash["name"]
      end 
    end 
  end 
      
end 
def count_contestants_by_hometown(data, hometown)
      i = 0 
      data.each do |season, contestant|
        contestant.each do |contestant|
          if contestant["hometown"] == hometown 
            i += 1
          end 
        end 
      end 
      i 
        
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  age = 0 
  contestant_number = 0 
  data.each do |key, value|
    if key == "age"
      contestant_number += 1 
      
end
