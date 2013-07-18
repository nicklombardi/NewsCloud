<br>
geolocations collected: <br>
  <% @geolocations.each do |location| %>
    <%= location %>
  <% end %>
<hr>

<%= Location.all %>


<% @geolocations.each do |location| %>
  <% form action="/home/new" method="post" %>

  <input type="hidden" name="name" value="#">
</form>


first geolocation: <br>
  <% @geolocations.each do |location| %>
  <%= location[0] %>
<% end %>

<% @geolocations.each do |location| %>
  <% unless location[0] == nil %>
    <%= location[0] %>,
  <% end %>
<% end %>

<%= @articles_to_save %>