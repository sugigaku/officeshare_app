class PostsController < ApplicationController

    def index 
     @posts=Posts.all
    end

    def new
     @post=Post.new
    end

    def show

    end

    def create
      logger.debug post_params
      logger.debug 'Aaaaaaaaaaaaa'
      @post=Post.new(post_params)
      if @post.save!
         @company= Company.find_by(id: session[:company_id])
         @post.company_id = @company.id
         redirect_to "/companies/#{@company.id}"
      else
        @error_message="エラー"
        render "new"
      end

    end

    private

    def post_params
      params.permit(:place, :date, :mxpeople, :requirement, :detail).merge({:company_id => session[:company_id]})
    end



end
