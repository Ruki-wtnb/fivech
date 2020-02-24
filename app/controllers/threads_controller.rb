class ThreadsController < ApplicationController
  
  def index
    @thre = Thre.all
  end
  
  def new
    @thre = Thre.new
    @category = Category.all
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
  
  def show
    @thre = Thre.find(params[:id])
    @re = Re.new
  end
  
  def res
    
    @re = Re.create(user_id: current_user.id, thre_id:  params[:re][:thre_id], body: params[:re][:body])
    params[:id] = params[:re][:thre_id]
    if @re.save
      flash.now[:danger] = '投稿しました'
      @thre = Thre.find(params[:re][:thre_id])
    else
      flash.now[:danger] = '投稿に失敗しました'
    end
    
  end
  
  
end
