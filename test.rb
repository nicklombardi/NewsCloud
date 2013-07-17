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
