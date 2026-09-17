# script to check the UW at Oshkosh dorm availability

# define the URL
URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/F5839110/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?HadEmptyContext=True"

# Fetch the page
html=$(curl -sL "$URL")

# find the matching phrase
phrase="$html" | grep -o 'Check back later'
echo "-----"
echo $phrase
echo "this has ${#phrase} characters
echo "-----"

# check for the phrase
if [[${#phrase} -gt 0]]; then
  echo $phrase
  exit 0
else
  echo "Good news... try the reservation website!"
fi
