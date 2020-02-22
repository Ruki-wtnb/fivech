class ThreadsController < ApplicationController
  
  def index
    @thre = Thre.all
  end
  
  def new
    @thre = Thre.new
  end
  
  def create
    @thre = Thre.create(user_id: @current_user.id, title: title)
    
    if @thre.save
      redirect_to threads_index_path
    else
      flash.now[:danger] = '投稿に失敗しました'
    end
    
  end
  
end
