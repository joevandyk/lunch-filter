class Vote < ActiveRecord::Base

    def self.count_votes(candidate)
        Vote.count(:conditions=>["candidate = ?", candidate])
    end
end
