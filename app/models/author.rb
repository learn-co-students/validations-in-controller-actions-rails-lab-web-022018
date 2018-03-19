class Author < ActiveRecord::Base
#   Add validations to Author such that...
# The name cannot be blank
 validates :name, presence: true
# validates :name, uniqueness: true #, uniqueness: true
# The e-mail is unique
validates :email, uniqueness: true
end
