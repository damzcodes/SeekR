joe = MissingPerson.find_or_create_by!(:first_name => "Joey") do |person|
  person.last_name = "Smith" 
  person.last_seen = "16 Jun 2009"
  person.image_url = "http://www.amdadjusters.org/amd/images/profileholder.gif"
end

zoe = MissingPerson.find_or_create_by!(:first_name => "Zoey") do |person|
  person.last_name = "Smith" 
  person.last_seen = "19 Dec 2011"
  person.image_url = "http://www.amdadjusters.org/amd/images/profileholder.gif"
end

chloe = MissingPerson.find_or_create_by!(:first_name => "Chloey") do |person|
  person.last_name = "Smith" 
  person.last_seen = "03 Feb 2013"
  person.image_url = "http://www.amdadjusters.org/amd/images/profileholder.gif"
end




