class ThreadsController < ApplicationController
  
  def index
    @thre = Thre.all
  end
  
  def new
    @thre = Thre.new
  end
  
  def create
    binding.pry
    @thre = Thre.create(user_id: current_user.id, title: params[:thre][:title])
    
    if @thre.save
      redirect_to threads_index_path
    else
      flash.now[:danger] = '投稿に失敗しました'
    end
    
  end
  
end
