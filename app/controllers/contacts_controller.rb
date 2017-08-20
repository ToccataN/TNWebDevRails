class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    ContactMailer.contMail(@contact).deliver
    flash[:notice] = 'Thank-you, your message has been delivered!'
    return redirect_to root_path
  end
end
