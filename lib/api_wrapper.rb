require 'httparty'

class ApiWrapper
  BASE_URL = "https://api.edamam.com/search?app_id=#{ ENV["APP_ID"] }&app_key=#{ ENV["APP_KEY"] }"

  def self.search(query_term)
    data = HTTParty.get(BASE_URL + "&q=#{ query_term }")
    
    if data["hits"]
      return data["hits"]
    else
      return []
    end
  end
end
