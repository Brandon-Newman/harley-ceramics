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
        color_desc = ModelColor.where(model_id: model.id).pluck('color_id').map { |id| Color.find(id).description}

        render json: {id: model.id, model: model.name, colors: color_desc}, status: :ok
    end

    def new_model
        is_new_bike = Model.where(name: params[:model_name]).empty?
        return render json: "Model already exists", status: :bad_request unless is_new_bike
        model = Model.create(chassi_id: params[:chassi_id], name: params[:model_name])
        model_id = model.id
        available_colors = []

        params[:colors].each do |color|
            ModelColor.create(model_id: model_id, color_id: color)
            available_colors.push(Color.find(color).description)
        end

        new_bike = {
            chassis: Chassi.find(params[:chassi_id]).style,
            model_name: model.name,
            available_colors: available_colors
        }
        render json: new_bike, status: :ok
        #need join table before creating models 
    end

    def add_color_to_model
        model = Model.find(params[:id])
        color = Color.find(params[:color_number])
        is_new_combination = ModelColor.where(model_id: model.id, color_id: color.id).empty?
        return render json: "Combination already exists", status: :bad_request unless is_new_combination
        ModelColor.create(model_id: model.id, color_id: color.id)
        render json: "#{model.name} now available in #{color.description}", status: :ok
    end

    def delete_model
        # haven't designed these yet
    end

end
