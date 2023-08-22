class CustomBikeController < ApplicationController
    skip_before_action :verify_authenticity_token

    def build_custom_bike
        color_description = params[:color]

        color_already_exists = Color.where('lower(description) = ?', color_description.downcase).present?
        
        color = Color.create(description: color_description, official_color: false) unless color_already_exists

        color = Color.where('lower(description) = ?', color_description.downcase).first
        
        new_bike = CustomBike.create(
            chassi_id: params[:chassi_id],
            model_id: params[:model_id],
            color: color.id
        )
        custom_bike = transform_bike(new_bike)
        render json: custom_bike, status: :ok
    end

    private
    def transform_bike(bike)
        custom_bike = {
            chassi_id: bike.chassi_id,
            chassis_description: Chassi.find(bike.chassi_id).style,
            model_id: bike.model_id,
            model_name: Model.find(bike.model_id).name,
            color_id: bike.color,
            color_description: Color.find(bike.color).description
        }
    end
    
end
