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

  patch "/discontinue-model/:id", to: "model#discontinue_model" 

  post "/create-custom-bike", to: "custom_bike#build_custom_bike" #to_be_done
  
end
