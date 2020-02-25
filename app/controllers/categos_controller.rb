class CategosController < ApplicationController
  
  def new
    
    @category = Category.new
  end
  
  def create
    @category = Category.new(name: params[:category][:name])
    
    if @category.save
      redirect_to new_thread_path
    else
      render :new
    end
    
  end
end
