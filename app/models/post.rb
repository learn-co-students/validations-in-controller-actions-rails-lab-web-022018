class Post < ActiveRecord::Base
#
#   he title cannot be blank
 validates :title, presence: true

# The category is either "Fiction" or "Non-Fiction"
  validates :category, inclusion: %w(Fiction Non-Fiction) #  validates :category, inclusion: %w(Fiction Non-Fiction)#%w(male female)

# The content is at least 100 characters long.
  validates :content, length: {minimum: 100}
end
