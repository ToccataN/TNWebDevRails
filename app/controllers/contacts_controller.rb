class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Thank-you, your message has been delivered!'
      return redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      return render :new
    end
  end
end
