class ContactsController < ApplicationController


  def new
    @contact = Contact.new
    @cities = City.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to cities_path
    else
      render :new
    end
  end

  private

    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:date_contact, :object_number, :city_id)
    end

end
