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
        chassis = Chassi.all
        catalog = chassis.map { |chassi| {
                chassis_id: chassi.id,
                chassis_description: chassi.style,
                models: Model.where(chassi_id: chassi.id).map { |model| {
                    model_id: model.id,
                    model_name: model.name,
                    model_colors: ModelColor.where(model_id: model.id).pluck('color_id').map { |id| {
                        color_id: Color.find(id).id,
                        color_description: Color.find(id).description
                    }
                }
                }}
            }
            }
        

        render json: catalog, status: :ok
    end
end
