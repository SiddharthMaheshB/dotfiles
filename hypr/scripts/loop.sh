status=$(playerctl loop --player=spotify)
echo "$status"
if [ $status == "Playlist" ]; then
  playerctl loop track --player=spotify
else
  playerctl loop playlist --player=spotify
fi
