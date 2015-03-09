class StoriesController < ApplicationController
  def index
    @stories = Story.all.to_a
    respond_to do |format|
      format.json do
        render :json => {:items => @stories}
      end
    end
  end

  def show
    story = Story.find(params[:id])

    respond_to do |format|
      format.json do
        render :json => story
      end
    end
  end
end
