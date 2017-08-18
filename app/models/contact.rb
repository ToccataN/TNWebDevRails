class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      :subject => "Contact TNWEB",
      :to => ENV["GMAIL_USERNAME"],
      :from => %("#{name}" <#{email}>)
    }
  end
end
