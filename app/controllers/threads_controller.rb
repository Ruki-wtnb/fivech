class ThreadsController < ApplicationController
  
  def index
    @thre = Thre.all
  end
  
  def new
    @thre = Thre.new
    @category = Category.all
  end
  
  def create
    @thre = Thre.new(post_params)
    
    if @thre.save
      redirect_to threads_path
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
      @re = Re.new
      
    else
      flash.now[:danger] = '投稿に失敗しました'
    end
    
  end
  
  private
  def post_params
    params.require(:thre).permit(:user_id, :title, category_ids: [])
  
  end
  
  
end
