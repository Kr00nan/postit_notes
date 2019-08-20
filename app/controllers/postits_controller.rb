class PostitsController < ApplicationController
  def index
    @postits = PostIt.all
  end

  def show
    @postit = PostIt.find(params[:id])
  end

  def new
    @postit = PostIt.new
  end

  def create
    @postit = PostIt.new(postits_params)
 
    if @postit.save
      redirect_to postits_path
    else
      render :new
    end
  end

  def edit
    @postit = PostIt.find(params[:id])
  end

  def update
    @postit = PostIt.find(params[:id])
  
    if @postit.update(postit_params)
      redirect_to postits_path
    else
      render :edit
    end
  end

  def destroy
    PostIt.find(params[:id]).destroy
    redirect_to postits_path
  end
 
  private
  def postits_params
    params.require(:postit).permit(:title, :date, :body)
  end
end
