require 'pry'
hash1 = { "season 10": [
      {
         "name":"Tessa Horst",
         "age":"26",
         "hometown":"San Francisco, CA",
         "occupation":"Social Worker",
         "status":"Winner"
      },
      {
         "name":"Bevin Nicole Powers",
         "age":"28",
         "hometown":"Palo Alto, CA",
         "occupation":"Assistant",
         "status":"Week 8"
      },
      {
         "name":"Danielle Imwalle",
         "age":"25",
         "hometown":"Bethel, CT",
         "occupation":"Graphic Designer",
         "status":"Week 7"
      },
      {
         "name":"Amber Alchalabi",
         "age":"23",
         "hometown":"Sugar Land, TX",
         "occupation":"Teacher",
         "status":"Week 6"
      },
      {
         "name":"Stephanie Wilhite",
         "age":"23",
         "hometown":"Overland Park, KS",
         "occupation":"Project Manager",
         "status":"Week 5"
      },
      {
         "name":"Tina Wu",
         "age":"26",
         "hometown":"Los Angeles, CA",
         "occupation":"Medical student",
         "status":"Week 5"
      },
      {
         "name":"Kate Brockhouse",
         "age":"24",
         "hometown":"Charleston, SC",
         "occupation":"Boutique owner",
         "status":"Week 4"
      },
      {
         "name":"Nicole Clary",
         "age":"26",
         "hometown":"Charleston, SC",
         "occupation":"Sales Manager",
         "status":"Week 4"
      },
      {
         "name":"Stephanie Tipper",
         "age":"27",
         "hometown":"Folly Beach, SC",
         "occupation":"Organ donor coordinator",
         "status":"Week 4"
      },
      {
         "name":"Amanda Hackney",
         "age":"26",
         "hometown":"Dallas, TX",
         "occupation":"Financial analyst",
         "status":"Week 3"
      },
      {
         "name":"Erin Parker",
         "age":"24",
         "hometown":"Logansport, LA",
         "occupation":"Financial analyst",
         "status":"Week 3"
      },
      {
         "name":"Peyton Wright",
         "age":"24",
         "hometown":"Dallas, TX",
         "occupation":"Sorority recruiter",
         "status":"Week 3"
      },
      {
         "name":"Alexis Young",
         "age":"26",
         "hometown":"Southlake, TX",
         "occupation":"Attorney",
         "status":"Week 2"
      },
      {
         "name":"Susan Anderson",
         "age":"23",
         "hometown":"The Woodlands, TX",
         "occupation":"Boutique manager",
         "status":"Week 2"
      },
      {
         "name":"Tiffany Warren",
         "age":"28",
         "hometown":"Boston, MA",
         "occupation":"Medical equipment sales rep",
         "status":"Week 2"
      },
      {
         "name":"Blakeney Rowe",
         "age":"29",
         "hometown":"Birmingham, AL",
         "occupation":"Radio sales",
         "status":"Week 1"
      },
      {
         "name":"Candace DeCost",
         "age":"23",
         "hometown":"Hilton Head Island, SC",
         "occupation":"Waitress",
         "status":"Week 1"
      },
      {
         "name":"Catherine Warren",
         "age":"23",
         "hometown":"Lake Forest, IL",
         "occupation":"Former Miss Illinois",
         "status":"Week 1"
      },
      {
         "name":"Danielle Vallis",
         "age":"26",
         "hometown":"Bronx, NY",
         "occupation":"Attorney",
         "status":"Week 1"
      },
      {
         "name":"Jackie Topelli",
         "age":"23",
         "hometown":"Minneapolis, MN",
         "occupation":"Executive coordinator",
         "status":"Week 1"
      },
      {
         "name":"Jeanette Alvarez",
         "age":"27",
         "hometown":"Tampa, FL",
         "occupation":"Health care manager",
         "status":"Week 1"
      },
      {
         "name":"Jessica Devallo",
         "age":"32",
         "hometown":"New York, New York",
         "occupation":"Hedge fund analyst",
         "status":"Week 1"
      },
      {
         "name":"Linda Malek",
         "age":"33",
         "hometown":"Cuyahoga Falls, OH",
         "occupation":"Attorney",
         "status":"Week 1"
      },
      {
         "name":"Lindsay Smith",
         "age":"22",
         "hometown":"Lawrence, KS",
         "occupation":"Student",
         "status":"Week 1"
      },
      {
         "name":"Tiffany Forester",
         "age":"27",
         "hometown":"St. Louis Park, MN",
         "occupation":"Real estate sales/development",
         "status":"Week 1"
      }
   ]}

hash = {
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Shreveport, Louisiana",
      "occupation": "Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    },
    {
      "name":       "fake name",
      "age":        "200",
      "hometown":   "New York, New York",
      "occupation": "hacker",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Shreveport, Louisiana",
      "occupation": "Dental Assistant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data, season)
  i = 0
  data[season].each do |info|
    info.each do |category, value|
      if category == "status" && value == "Winner"
        return data[season][i]["name"].rpartition(" ").first
        i += 1
      end
    end
  end
end


def get_contestant_name(data, occupation)
  i=0
  data.each do |season_num, info|
    info.each do |details|
      details.each do |category, value|
        if value === occupation
          return data[season_num][i]["name"]
        end
      end
      i += 1
    end
    i=0
  end
end


def count_contestants_by_hometown(data, hometown)
  home_count = 0
  i = 0
  data.each do |season_num, info|
    info.each do |details|
      details.each do |category, value|
        if value === hometown
          home_count += 1
        end
      end
      i += 1
    end
    i=0
  end
  return home_count
end


def get_occupation(data, hometown)
  i = 0
  home_count = []
  data.each do |season_num, info|
    info.each do |details|
      details.each do |category, value|
         if value === hometown
          home_count.push(data[season_num][i]["occupation"])
        end
      end
      i += 1
    end
    i=0
  end
  return home_count[0]
end


def get_average_age_for_season(data, season)
  age_list = []
  i = 0
  data[season].each do |info|
    info.each do |category, value|
      if category === "age"
        age_list.push(value.to_i)
        i += 1
      end
    end
  end

  age_list_sum = 0
  i=0
    age_list.each do |i|
      age_list_sum += i
    end

  age_list_size = age_list.size.to_f
  answer = age_list_sum/age_list_size
  return answer.round
end
