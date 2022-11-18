class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attr)
        Movie.find_by(attr)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(attribute)
        self.update(attribute)        
    end

    def self.update_all_titles(value)
        Movie.update(title: value)
    end

    def self.delete_by_id(id)
        instance = Movie.find(id)
        instance.destroy
    end

    def self.delete_all_movies
        Movie.all.each do |movie|
            movie.destroy
        end
    end
end