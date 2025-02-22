class Movie < ActiveRecord::Base
  def in_theaters?
    in_theaters
  end

  def self.create_with_title(title)
    create(title: title)
  end

  def self.first_movie
    first
  end

  def self.last_movie
    last
  end

  def self.movie_count
    count
  end

  def self.find_movie_with_id(id)
    find(id)
  end

  def self.find_movie_with_attributes(attributes)
    find_by(attributes)
  end

  def self.find_movies_after_2002
    where("release_date > ?", 2002)
  end

  def update_with_attributes(attributes)
    update(attributes)
  end

  def self.update_all_titles(new_title)
    update_all(title: new_title)
  end

  def self.delete_by_id(id)
    find(id).destroy
  end

  def self.delete_all_movies
    delete_all
  end
end