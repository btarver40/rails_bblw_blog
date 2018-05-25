class BblwsController < ApplicationController
  def index
    @bblws = Bblw.all
  end
  # Page.all => Returns all pages in the database

  def show
    @bblw = Bblw.find(params[:id])
  end
  # Page.find(#) => Finds a page by the id passed in

  def new
    @bblw = Bblw.new
  end
# Page.new => Creates a new page in memory that is not yet saved to the db


def create
  @bblw = Bblw.new(bblws_params)
  if @bblw.save
    redirect_to bblws_path
  else
    render :new
  end 
end

private
def bblws_params
  params.require(:bblw).permit(:title, :author, :category, :body)
  end
end