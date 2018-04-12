class EmailMailer < ApplicationMailer
    def question
        mail to: "thibault.demars59@gmail.com", subject: ""
    end
end
