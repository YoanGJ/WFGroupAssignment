class SchoolModule < ApplicationRecord
    has_and_belongs_to_many :students
end
