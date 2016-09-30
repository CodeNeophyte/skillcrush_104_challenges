=begin
User story: A blog that outputs to the terminal |puts methods|
Takes input (or blogs) from the terminal |gets methods|
Make it so that blog posts can have authors

1. Create a class that will be the blueprint for each ‘BlogPost’ object.
This class should set a title, content, a publish date, and maybe even an author
for each NEW post. You may want to do this by modifying the initialize method OR
you may want you craft your own method, with all the special behaviour in it.

2. use logic to create a prompt saying “do you want to create another blog post?
[Y/N]”. If you hit Y the script will run through the questions to add content.
If you hit N, you will stop entering content.

3. Create a parent class called something like ‘Blog’, that will keep track of
how many blog posts you have created, and what to do with them.

4. Save all blog posts in an array or a hash (you learned about these in lesson 7),
in the parent class. Experiment with both. Push every new blog post into said array.
Look up ‘Array’ methods in ruby to figure out how this might be possible.

5. Let’s create a variable that will count our blog posts, starting at 0, and a
method that will increment with each new blog post created and appended to our
array of posts. Should this be an instance variable or a class variable? In what
class should this counter be?

6. Create a ‘publish’ method that will output all your blog posts to the terminal
Would that be a class or instance method?
=end

class Blog #parent class
  @@blogposts_count = 0
  @@blogposts = Array.new(0)

  def publish
    @@blogposts.each { |post| puts post}
  end
end

class Post < Blog
  attr_accessor :title, :content, :publish_date, :author

  def initialize(title, content, publish_date, author)
    @@blogposts_count += 1
    @title = title
    @content = content
    @publish_date = publish_date
    @author = author
    @@blogposts << {title: @title, author: @author, publish_date: @publish_date, content: @content}
  end

end

puts "Welcome to the Blog-o-matic."
begin
  continue = "Y"
  while continue == "Y"
    puts "Do you want to create another blog post? [Y/N]"
    continue = gets.chomp.upcase
      if continue == "N"
        exit
      elsif continue == "Y"
        #create another blog post.
        puts "Please enter a title:"
        title = gets.chomp
        puts "Please enter name of the author:"
        author = gets.chomp
        puts "Please enter your content:"
        content = gets.chomp
        date = Time.now
        post = Post.new(title, content, date, author)
      else
        puts "You made an error. Please try again."
      end
      puts "Would you like to publish your posts? [Y/N]"
      to_publish = gets.chomp.upcase
      if to_publish == "Y"
        post.publish
      end
    end
end
