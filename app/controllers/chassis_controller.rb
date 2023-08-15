class ChassisController < ApplicationController
    skip_before_action :verify_authenticity_token

    def list_chassis
        render json: Chassi.all, only: [:id, :style], status: :ok
    end

    def new_chassis
        chassis = Chassi.create(style: params[:style])
        render json: chassis, status: :ok
    end

end
