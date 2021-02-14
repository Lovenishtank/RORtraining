class Fact < ApplicationRecord
    self.per_page = 4
    acts_as_paranoid
    resourcify
    belongs_to :user , optional: true
end
