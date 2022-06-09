name=$1
age=$2
current_year=$3

year_of_birth=$((current_year - age))

echo year when $name turns 50 is $((year_of_birth+50))
