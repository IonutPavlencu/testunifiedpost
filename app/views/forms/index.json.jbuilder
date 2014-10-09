json.array!(@forms) do |form|
  json.extract! form, :id, :firstname, :lastname, :email, :cemail, :county, :city
  json.url form_url(form, format: :json)
end
