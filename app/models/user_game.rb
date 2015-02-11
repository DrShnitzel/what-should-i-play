class UserGame < ActiveRecord::Base
  class << self
    def unplayed_games(user)
      games = user_games_from_steam(user.uid)
      games.select { |g| g['playtime_forever'] == 0 }
    end

    private

    def user_games_from_steam(uid)
      steam_addr = 'http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/'
      resp = HTTPClient.get steam_addr,
        {
          key: ENV['STEAM_API_KEY'],
          steamid: uid,
          format: 'json',
          include_appinfo: 1
         }
      JSON.parse(resp.body)['response']['games']
    end
  end
end
