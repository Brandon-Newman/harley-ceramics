class ModelController < ApplicationController
    skip_before_action :verify_authenticity_token
    
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
        model = Model.find(params[:id])
        # color_ids = ModelColor.where(model_id: model.id).pluck('color_id')
        # color_desc = color_ids.map { |id| Color.find(id).description}
        color_desc = ModelColor.where(model_id: model.id).pluck('color_id').map { |id| Color.find(id).description}

        render json: {id: model.id, model: model.name, colors: color_desc}, status: :ok
    end

    def new_model
        #need join table before creating models 
    end

    def add_color_to_model
        model = Model.find(params[:id])
        color = Color.find(params[:color_number])
        new_combination = ModelColor.where(model_id: model.id, color_id: color.id).empty?
        return render json: "Combination already exists", status: :bad_request unless new_combination
        ModelColor.create(model_id: model.id, color_id: color.id)
        render json: "#{model.name} now available in #{color.description}", status: :ok
        #creates duplicates
    end

    def delete_model
        # haven't designed these yet
    end

end
