json.array!(@songs) do |song|
  json.extract! song, :id, :name, :lyric, :views, :keywords, :uploader, :performer, :writer, :album, :views_month, :status, :filename, :category_id, :postcard_id
  json.url song_url(song, format: :json)
end
