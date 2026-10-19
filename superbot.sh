#!/bin/bash
while true; do
echo "🤖 SUPER BOT - Musa is sleeping, bot is working"
# pick random ad
ADS=("🔥 BUY SHOE 10K - WhatsApp 0803" "📱 IPHONE 12 150K - PH" "🚗 TOKUNBO CAR FOR SALE - CALL NOW" "💰 BET WIN BIG TODAY" "👗 FASHION WEAR - PORT HARCOURT")
RANDOM_AD=${ADS[$RANDOM % ${#ADS[@]}]}
echo "New Ad: $RANDOM_AD"
# update site time
echo "<!-- Updated $(date) - $RANDOM_AD -->" >> index.html
git add .
git commit -m "SuperBot update $RANDOM_AD - $(date)"
git push
echo "✅ DONE! Next update in 1 hour"
sleep 3600
done