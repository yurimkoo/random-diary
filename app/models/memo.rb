class Memo < ActiveRecord::Base
    has_many :likes
    belongs_to :question
end
