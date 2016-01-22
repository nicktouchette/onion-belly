if !@ingredient.blank?
  json.extract! @ingredient, :name
end
