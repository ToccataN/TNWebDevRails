class ContactMailer < ApplicationMailer
  def contMail(contact)
    @contact = contact
    mail( :to => ENV["GMAIL_USERNAME"],
       :subject => @contact.headers[:subject]) do |format|

         format.text { render plain: "#{@contact.name} from #{@contact.email}
            says #{@contact.message}  "}
    end
  end
end
