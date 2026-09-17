# script to check the UW at Oshkosh dorm availability

# define the URL
URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/F5839110/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?HadEmptyContext=True"

# Fetch the page
html=$(curl -sL "$URL")

# find the matching phrase
phrase="$html" | grep -o 'Check back later'

# check for the phrase
if [${#phrase} -lt 1]; then
  echo "Good news... try the reservation website!"
  exit 0
else
  echo $phrase
fi
