class ColorController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def list_all_colors
        render json: Color.all, only: [:id, :description], status: :ok
    end

    def new_color
        color = Color.create(description: params[:description])
        render json: color, status: :created
    end
end
