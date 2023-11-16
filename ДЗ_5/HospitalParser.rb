# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'csv'

def write_file(hospital_names, path)
  CSV.open(path, 'w') do |csv|
    csv << ['ID', 'Hospital Name']
    id = 1
    hospital_names.each do |library_name|
      csv << [id, library_name]
      id += 1
    end
  end

end

def get_hospitals(doc)
  hospital_names = []
  doc.css('div#BlinkDBContent_849210 ul li a').each do |hospital|
    hospital_names<< hospital
  end
  hospital_names
end

url = 'https://www.hospitalsafetygrade.org/all-hospitals'

html = URI.open(url)
doc = Nokogiri::HTML(html)
path = ARGV[0]
if path.to_s.empty?
  path = 'libs.csv'
end
write_file(get_hospitals(doc), path)