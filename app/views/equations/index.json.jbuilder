json.array!(@equations) do |equation|
  json.extract! equation, :id, :title, :figure
  json.url equation_url(equation, format: :json)
end
