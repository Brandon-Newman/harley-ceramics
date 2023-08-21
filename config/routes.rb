Rails.application.routes.draw do

  get "/catalog", to: "chassis#list_catalog" #done

  get "/motorcycle-chassis", to: "chassis#list_chassis" #done

  get "/models-by-chassis/:id", to: "model#list_models" #done

  get "/list-model-colors/:id", to: "model#list_model_colors" #done

  get "/paint-colors", to: "color#list_all_colors" #done

  post "/new-chassis", to: "chassis#new_chassis" #done

  post "/new-model", to: "model#new_model"

  post "/new-color", to: "color#new_color" #done

  patch "/add-color-to-model/:id", to: "model#add_color_to_model"

  delete "/delete-chassis/:id", to: "chassis#delete_chassis"

  delete "/delete-model/:id", to: "model#delete_model"

  delete "/delete-color/:id", to: "color#delete_color"

  # Special Project
  post "/create-custom-bike", to: "controller#action"
  #create a customer "new bike model" by choosing a current chassis, model, and color. Color can be existing or a new custom color
  
end
