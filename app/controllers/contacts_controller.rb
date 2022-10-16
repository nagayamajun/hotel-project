class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(question_params)
    if @contact.save
      redirect_to @contact
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def question_params
    params.require(:contact).permit(:name, :email, :body)
  end
end
