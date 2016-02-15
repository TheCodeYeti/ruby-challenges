class Blog
    @@all_posts = []
    @@post_count = 0

    def self.all
        @@all_posts
    end
    def self.add(post)
        @@all_posts << post
        @@post_count += 1
    end
    def self.publish
        @@all_posts.each do |post|
            puts "Title:\n #{post.title}"
            puts "Body:\n #{post.content}"
            puts "Publish Date:\n #{post.publish_date}"
        end
    end
end

class BlogPost < Blog
    def self.create
        post = new
        puts "Title: "
        post.set_title= gets.chomp
        puts "Content: "
        post.set_content= gets.chomp
        post.set_publish_date= Time.now
        post.save
        puts "Post created! \nCreate another post? (Y/N)"
        create if gets.chomp.downcase == "y"
    end
    def title
        @title
    end
    def set_title= (title)
        @title = title
    end
    def get_title
        return @title
    end
    def publish_date
        @publish_date
    end
    def set_publish_date= (publish_date)
        @publish_date = publish_date
    end
    def get_publish_date
        return @publish_date
    end
    def content
        @content
    end
    def set_content= (content)
        @content = content
    end
    def get_content
        return @content
    end
    def save
        BlogPost.add(self)
    end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
