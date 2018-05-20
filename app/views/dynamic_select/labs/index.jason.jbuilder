json.array!(@labs) do |lab|
  json.extract! lab, :name, :id
end
