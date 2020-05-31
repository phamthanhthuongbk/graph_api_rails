class Api::V1::PostsController < ApplicationController
    load_and_authorize_resource

    def show
      # @post is already loaded and authorized
      render json: render_item(@post, fields), status: :ok
    end

    def index
      # @posts is already loaded with all posts the user is authorized to read
      render json: render_items(@posts, fields), status: :ok
    end
  end