class Student < ApplicationRecord
    has_and_belongs_to_many :school_modules
    
    has_secure_password
end
