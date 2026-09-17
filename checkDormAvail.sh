# script to check the UW at Oshkosh dorm availability

# define the URL
URL="https://uwosh.starrezhousing.com/StarRezPortalXConference/F5839110/30/377/AirVenture_2026_Indi-Welcome_to_AirVentur?HadEmptyContext=True"

# Fetch the page
html=$(curl -sL "$URL")

echo "=== find the matching phrase ==="
echo "$html" | grep -o 'Check back later'
