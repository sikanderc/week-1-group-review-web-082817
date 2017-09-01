# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


our_pic = Photo.new
sophie = User.new("Sophie")
our_pic.user = sophie
our_pic.user.name
# => "Sophie"
sophie.photos
# => [<photo 1>]


our_pic.comments
# => []

our_pic.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
our_pic.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]


class Photo
  @@all = []
  # attr_accessor :user

  def initialize
    #@user
    @@all << self
    @comments = []
  end

  def user
    @user
  end

  def user=(user_instance)
    @user = user_instance
  end

  def self.all
    @@all
  end

  def comments
    @comments
  end

  def comments=(comment_instance)
    @comments = comment_instance
  end

  def our_comment(comment)
    @comments.push(comment)
  end
end

class User
  # @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    # @@all << self
  end

  def photos
    @photos = Photo.all

  end
end

class Comment

end
