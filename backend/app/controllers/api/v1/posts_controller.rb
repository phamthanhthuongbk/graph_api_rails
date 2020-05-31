class Api::V1::PostsController < ApplicationController
    load_and_authorize_resource

    def show
      # @post is already loaded and authorized
      render json: @post, status: :ok
    end

    def index
      # @posts is already loaded with all posts the user is authorized to read
      render json: @posts, status: :ok
    end
  end