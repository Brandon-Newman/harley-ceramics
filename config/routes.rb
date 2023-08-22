Rails.application.routes.draw do

  get "/catalog", to: "chassis#list_catalog" 

  get "/motorcycle-chassis", to: "chassis#list_chassis" 

  get "/models-by-chassis/:id", to: "model#list_models" 

  get "/list-model-colors/:id", to: "model#list_model_colors" 

  get "/paint-colors", to: "color#list_all_colors" 

  post "/new-chassis", to: "chassis#new_chassis" 

  post "/new-model", to: "model#new_model"

  post "/new-color", to: "color#new_color" 

  patch "/add-color-to-model/:id", to: "model#add_color_to_model" 

  delete "/delete-chassis/:id", to: "chassis#delete_chassis" #to_be_done

  delete "/delete-model/:id", to: "model#delete_model" #to_be_done

  delete "/delete-color/:id", to: "color#delete_color" #to_be_done

  # Special Project
  post "/create-custom-bike", to: "controller#action" #to_be_done
  #create a customer "new bike model" by choosing a current chassis, model, and color. Color can be existing or a new custom color
  
end
