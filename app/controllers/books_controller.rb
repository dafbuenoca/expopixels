class BooksController < ApplicationController
  def index
  	@books = Book.all
  end
  # GET /books/:id
  def show 
    @book= Book.find(params [:id])
  end
  def new 
  	@book = Book.new
  end
  # POST /books
  def create 
  	@book = Book.new(name: params[:book][:name],description: params[:book][:description])
	if @book.save
		redirect_to :show
	else
		render :new
	end  
  end
end
