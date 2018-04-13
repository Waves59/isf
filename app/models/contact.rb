class Contact < MailForm::Base
    attribute :category,  :validate => true
    attribute :first_name,      :validate => true
    attribute :last_name,      :validate => true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :phone_number
    attribute :company
    attribute :attitude, :validate => true
    attribute :message
    attribute :nickname,  :captcha  => true
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        :subject => "Un utilisateur ISF à besoin de votre aide !",
        :to => "thibault.demars59@gmail.com",
        :from => %("#{first_name} #{last_name}" <#{email}>)
      }
    end
  end