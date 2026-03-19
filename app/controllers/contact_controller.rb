class ContactController < ApplicationController
  def index
    data = Contact::IndexData.call
    @contact_info = data.contact_info
  end
end
