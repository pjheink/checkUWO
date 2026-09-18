# script to check the UW at Oshkosh dorm availability

# define the URL
# URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/F5839110/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?HadEmptyContext=True"
URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/C410EE86/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?UrlToken=375C5A55"

# Fetch the page
# html=$(curl -sL "$URL")
html=$(wget -qO - "$URL)

# find the matching phrase
aaa="$html" | grep -o 'Check back later'
echo "-----"
echo "$aaa"
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
