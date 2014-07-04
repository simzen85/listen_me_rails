class Song < ActiveRecord::Base
  belongs_to :category
  belongs_to :postcard
  acts_as_votable 
end
