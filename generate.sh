# Create result directory
mkdir -p "renders"

# Create temp file
cp template.html tmp.html

# Replace placeholders
sed -i '' 's/{{CALENDAR_WEEK}}/'"$1"'/g' tmp.html
sed -i '' 's/{{DATE_WEDNESDAY}}/'"$2"'/g' tmp.html
sed -i '' 's/{{DATE_THURSDAY}}/'"$3"'/g' tmp.html

# Generate image
pageres file:///"`pwd`/tmp.html" 1500x1200 --filename="renders/kw_$1" --overwrite

# Convert to pdf
convert "renders/kw_$1.png" "renders/kw_$1.pdf"

# Cleanup
rm -f tmp.html
rm -f "renders/kw_$1.png"