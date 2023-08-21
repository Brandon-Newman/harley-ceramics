class ChassisController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def list_chassis
        render json: Chassi.all, only: [:id, :style], status: :ok
    end
    
    def new_chassis
        chassis = Chassi.create(style: params[:style])
        render json: chassis, status: :created
    end
    
    def list_catalog
            #think of structure first
    end

    def delete_chassis
        # need structure to do a full delete. Think about relationships
    end

end
