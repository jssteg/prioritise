class Sifter
  include HTTParty

  def initialize
    Sifter.default_options[:base_uri] = "https://" << ENV['SIFTER_HOST_NAME']
    Sifter.default_options[:headers] = {"X-Sifter-Token" => ENV['SIFTER_API_TOKEN'], "Accept" => "application/json"}
  end

  def projects
     Sifter.get("/api/projects").parsed_response["projects"]
  end
end