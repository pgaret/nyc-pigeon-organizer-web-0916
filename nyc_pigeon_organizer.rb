require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = Hash.new
  data.each do |category, trait_list|
    trait_list.each do |trait, pigeon_list|
      pigeon_list.each do |pigeon|
        if !pigeon_data.keys.include?(pigeon) then pigeon_data[pigeon] = {} end
        if !pigeon_data[pigeon].keys.include?(category) then pigeon_data[pigeon][category] = [] end
        pigeon_data[pigeon][category] << trait.to_s
      end
    end
  end
  pigeon_data
end

nyc_pigeon_organizer(pigeon_data)
