# script to check the UW at Oshkosh dorm availability

# define the URL
URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/F5839110/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?HadEmptyContext=True"

# Fetch the page
#html=$(curl -sL "$URL")
html=$(wget -q - "$URL")

# find the matching phrase
aaa="$html" | grep -o 'Check back later'
echo "-----"
echo "$html" | grep -o 'script'
echo "this has ${#aaa} characters"
echo "-----"

#exit 0

# check for the phrase
if [[${#aaa} -gt 0]]; then
  echo $aaa
  exit 0
else
  echo "Good news... try the reservation website!"
fi
