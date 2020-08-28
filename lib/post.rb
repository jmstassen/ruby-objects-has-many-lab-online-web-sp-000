class Post
  attr_accessor :author, :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

  def author
    @author
  end

end
