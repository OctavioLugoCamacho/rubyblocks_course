class Movie
  attr_reader :title, :rating, :duration

  def initialize(title, rating, duration)
    @title = title
    @rating = rating
    @duration = duration
  end

  def watch
    puts "Watching #{title} - #{rating} (#{duration} min)..."
  end
end

movie1 = Movie.new("Toy Story", "G", 81)
movie2 = Movie.new("Cast Away", "PG", 143)
movie3 = Movie.new("Apollo 13", "PG", 140)
movie4 = Movie.new("Cars", "G", 117)

class MovieQueue
  include Enumerable

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def each
    @movies.each { |movie| yield movie }
  end

  def each_by_raiting(raiting)
    @movies.select { |movie| movie.rating == raiting }.each { |movie| yield movie }
  end
end

queue = MovieQueue.new("Friday Night")
queue.add_movie(movie1)
queue.add_movie(movie2)
queue.add_movie(movie3)
queue.add_movie(movie4)

queue.each_by_raiting("G") { |movie| movie.watch }
p queue.select { |m| m.duration < 100 }
p queue.detect { |m| m.title =~ /13/}
