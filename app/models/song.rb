class Song < ActiveRecord::Base
  belongs_to :category
  belongs_to :postcard
end
