class Api::SearchController < ApplicationController
  def index
    response = HTTP.headers("Authorization" => "Bearer 3AkNLilOJbrkNLjU5bjx2Z2N7UTtHhuz8tFVovNsPx5lZ0Sv9ZzdPaBa7-4xvrY8")
      .get(URI.parse("https://api.genius.com/search?q=#{params[:q]}"))

    songs = []
    all_song_data = response.parse["response"]["hits"]
    i = 0
    while i < all_song_data.length
      song = all_song_data[i]["result"]["full_title"]
      songs << song
      i += 1
    end
    render json: songs
  end
end
