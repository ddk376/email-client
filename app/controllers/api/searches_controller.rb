class Api::SearchesController < ApplicationController
  def index

     @emails = ElectronicMail.custom_search(params[:query]).page(params[:page])
       render json: {:models => @emails, :page => params[:page], :total_pages => @emails.total_pages}
  end
end
