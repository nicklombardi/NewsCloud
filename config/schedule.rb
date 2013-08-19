every '0 * * * *' do
  rake "get_heatmap_data"
end

every '1 * * * *' do
  rake "delete_old"
  rake "remove_ny_bias"
  rake "remove_ny_bias_two"
  rake "remove_nulls"
end
