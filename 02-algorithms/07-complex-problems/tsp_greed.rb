require_relative 'node'

class TSP_GREED
  attr_accessor :neighbor_cities
  attr_accessor :next_city
  
  def initialize
    @neighbor_cities = []
  end
  
  def nearest_possible_neighbor(graph_of_cities, current_city)
    while current_city.visited == false
      @neighbor_cities = current_city.neighbors
      @next_city = @neighbor_cities[0]
      
      for current_neighbor in @neighbor_cities
        if current_neighbor.distance < next_city.distance
          @next_city = current_neighbor
        end
      end
      
      current_city.visited = true
      current_city = @next_city
    end
  end
end