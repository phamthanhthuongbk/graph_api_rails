class Api::V1::AccountsController < ApplicationController
    load_and_authorize_resource

    def show
      render json: render_item(@account, fields), status: :ok
    end

    def index
      render json: render_items(@accounts, fields), status: :ok
    end
end
