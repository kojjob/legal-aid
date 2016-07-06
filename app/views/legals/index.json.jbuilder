json.array!(@legals) do |legal|
  json.extract! legal, :id, :title, :report
  json.url legal_url(legal, format: :json)
end
