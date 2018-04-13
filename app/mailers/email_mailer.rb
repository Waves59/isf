class EmailMailer < ApplicationMailer
    
    layout 'mailer'
 
    def contact_form(contact)
      @contact = contact
      @to = "isf@gmail.com"
   
      mail(to: @to, subject: "Provient de la plateforme ISF") do |format|
        format.html
      end
    end

end
