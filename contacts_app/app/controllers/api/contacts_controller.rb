class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.save
    render "show.json.jb"
  end

  def create
    @contact = Product.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    @contact.save
    render "show.json.jb"
  end

  def destroy
    @id = params[:id]
    contact = Contact.find_by(id: @id)
    contact.destroy
    render "destroy.json.jb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  
  
  
  
  
  def contact_method
    @first_contact = Contact.first
    render "contacts.json.jb"
  end

  def all_contacts_method
    @contacts = Contact.all
    render "all_contacts.json.jb"

  end
end
