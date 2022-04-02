class Genres
  def initialize
    @names = ["Action", "Comedy", "Sci-Fi", "Adventure"]
  end

  def each
    @names.each { |name| yield name }
  end
end

genres = Genres.new
genres.each { |name| puts name }

