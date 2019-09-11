def nyc_pigeon_organizer(data)
new_hash = {}
data.each do |col_gend_loc, innerAttrValues|
# p col_gend_loc
# p innerAttrValues
innerAttrValues.each do |actual_col_gend_loc, names|
p "#{actual_col_gend_loc}: #{names}"
 names.each do |indiv_names|
#  p indiv_names
 if !new_hash[indiv_names]
 new_hash[indiv_names] = {}
 end
 if !new_hash[indiv_names][col_gend_loc]
 new_hash[indiv_names][col_gend_loc] = []
 end
#  p   "#{actual_col_gend_loc}: #{indiv_names}"
  #=> still within the names loop, so iteration[1] is still on color '**purple**'
 # {"Theo" => {color => ['purple']},}
 #still within the names loop, so iteration[2] is still on color '**purple**'
  # {"Theo" => {color => ['purple']}, "Peter Jr." => {color => [purple]}....
	new_hash[indiv_names][col_gend_loc] << actual_col_gend_loc
 end
end
end
p new_hash
end
