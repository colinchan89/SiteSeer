require "instagram"

CALLBACK_URL = "http://localhost:4567/oauth/callback"

Instagram.configure do |config|
  config.client_id = "5eba1182f6a2468e8aaf5664d8eb8a14"
  config.client_secret = "eeaa757df5494cdc97d91e2a2495d1cb"
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
