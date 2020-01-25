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
      @post=Post.new(post_params)
      if @post.save
         @company= Company.find_by(id: session[company_id])
         @post.company_id = @company.id
         redirect_to "/companies/#{@company.id}"
      end

    end

    private

    def post_params
      params.require(:post).permit(:place, :date, :mxpeople, :requirement, :detail)
    end



end
