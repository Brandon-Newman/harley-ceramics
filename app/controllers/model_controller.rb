class ModelController < ApplicationController
    def list_models
        chassis = Chassi.find(params[:id])
        models = Model.where(chassi_id: chassis.id).pluck('id', 'name')
        model_info = models.map { |id, name| {id: id, name: name}}
        
        chassis_models = {
            chassis: chassis.style,
            models: model_info
    }
        render json: chassis_models, status: :ok
    end

    def list_model_colors
        #need join table before creating models 
    end

    def new_model
        #need join table before creating models 
    end

    def add_color_to_model
        #need join table before creating models
    end

    def delete_model
        # haven't designed these yet
    end

end
