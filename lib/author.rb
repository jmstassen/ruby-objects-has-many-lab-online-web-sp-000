class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      pong.author == self
    end
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_name(name)
    pong = Post.new(name)
    add_pong(pong)
  end

  def self.post_count
    Post.all.count
  end

end