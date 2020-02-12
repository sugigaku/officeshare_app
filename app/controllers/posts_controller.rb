class PostsController < ApplicationController

    def index 
      

     if params[:post]
      @posts = Post.all
      if params[:post][:date] && params[:post][:date]!= ""
        @posts = @posts.where(date: params[:post][:date]);
        
      end
      
      if params[:post][:place] && params[:post][:place]!= ""
        @posts = @posts.where('place like ?', "%#{params[:post][:place]}%");
        
      end

      if params[:post][:mxpeople] && params[:post][:mxpeople]!= ""
        @posts = @posts.where("mxpeople >= ?", params[:post][:mxpeople]);
           
      end
     else
      @posts = Post.all
     end

    end
    

    def new
     @post=Post.new
    end

    def show
      @post = Post.find(params[:id])
      @company = Company.find_by(id: @post.company_id)
    end

    def create
      
      @post=Post.new(post_params)
      if @post.save
         #@company= Company.find_by(id: session[:company_id])
        # @post.company_id = @company.id
         redirect_to "/companies/#{session[:company_id]}"
      else
        render "new"
      end

    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to "/companies/#{@post.company_id}"
      else
        render "edit"
      end 
  
    end
   

    private

    def post_params
      params.require(:post).permit(:place, :date, :mxpeople, :requirement, :detail).merge({:company_id => session[:company_id]})
    end



end
