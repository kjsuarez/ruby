require "open-uri"

base_url = "http://en.wikipedia.org/wiki"
year_first=1
year_last=10
all_years = open("data/start_year-end_year.html", "w")
#loops through wiki pages saving their html as files in 'data' folder
(year_first..year_last).each do
|current_year|
full_url = base_url + "/" + current_year.to_s
#reads html from given URL thanks to open-uri modual 
remote_data = open(full_url).read
#writes an html file to given directory and then writes remote_data's html to that file
local_file = open("data/page#{current_year}.html", "w")
local_file.write(remote_data)
current_file = open("data/page#{current_year}.html", "r")
all_years.write(current_file.read)
end

