class Model < ApplicationRecord
    def self.active
        where(status:'active')
    end

    def self.discontinued
        where(status: 'discontinued')
    end
    
    def active?
        status == "active"
    end
    
    def discontinued?
        status == "discontinued"
    end
     
end
