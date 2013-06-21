class CommentsController < ApplicationController
  # GET /comments
  def index
  end

  # GET /comments/1
  def show
    @Comment = Comment.find(params[:product_id])
    # @comment = Comment.new
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  def create
    @comment = Product.find(params[:product_id]).comments.new(params[:comment])
    if @comment.save
      @product=Product.find(params[:product_id])
      redirect_to @product, message: 'Comment successfully submitted.'
    else
      flash[:message] = "All fields must be filled to submit a comment"
      render action: 'new'
    end
  end


  # PUT /comments/1  
  def update
  end

  # DELETE /comments/1
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to products_url
  end
end