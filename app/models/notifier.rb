class Notifier < ActionMailer::Base
    def flag(name)
        recipients "support@lunchfilter.com"
        from "support@lunchfilter.com"
        subject "#{name} has been flagged for changes!"
        body :name => name
    end
end
