class Building
  attr_accessor :building_name, :building_address
  def initialize (building_name, building_address)
  end

def apartments
  building_apartments = []
end

def view_apartments
    apartments.each do |apartment|
      puts "Number #{apartment.number}"
      puts "Number #{apartment.}"
end
