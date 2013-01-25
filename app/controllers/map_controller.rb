class MapController < ApplicationController
  def index
    @xcord=Integer(params[:xcord])
    @ycord=Integer(params[:ycord])
    @size=Integer(params[:size])
     respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
      end
  end
end
