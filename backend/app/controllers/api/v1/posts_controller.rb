class Api::V1::PostsController < ApplicationController
    def index
      render json: {
        status: true,
      }, status: :ok
    end
  end