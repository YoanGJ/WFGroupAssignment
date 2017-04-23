class Student < ApplicationRecord
    has_many :school_modules
    
    has_secure_password
end
