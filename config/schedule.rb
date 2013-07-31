every '0 * * * *' do
  rake "delete_old"
  rake "remove_ny_bias"
  rake "remove_nulls"
end
