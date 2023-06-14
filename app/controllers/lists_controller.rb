class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
  end

  def create
     @list = List.new(list_params)
     if @list.save
       redirect_to list_path(@list.id)
       flash[:alert1] = "Book was successfully created."
     else
       @lists = List.all
       render :index
     end
  end


  def show
   @list = List.find(params[:id])
  end

  def edit
   @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
    redirect_to list_path(@list.id)
    flash[:alert2] = "Book was successfully updated."
   else 
    render :edit
   end 
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to "/lists"
    flash[:alert3] = "Book was successfully destroyed."
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end