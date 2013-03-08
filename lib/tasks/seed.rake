# Ending in .rake
# Ruby knows it's a rake task
desc "Create a bunch of seed data for artists and songs"

# "Environment" task loads your environment
task :seed_artists_and_songs => [:environment] do
	puts "About to create a bunch of data!!!!"
end