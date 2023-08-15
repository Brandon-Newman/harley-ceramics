Rails.application.routes.draw do

  get "/catalog", to: "chassis#list_catalog"

  get "/motorcycle-chassis", to: "chassis#list_chassis"

  get "/models-by-chassis", to: "model#list_models"

  get "/colors-by-model", to: "model#list_model_colors"

  get "/paint-colors", to: "color#list_all_colors"

  post "/new-chassis", to: "chassis#new_chassis"

  post "/new-model", to: "model#new_model"

  post "/new-color", to: "color#new_color"

  patch "/add-color-to-model", to: "model#add_color_to_model"

  delete "/chassis", to: "chassis#delete_chassis"

  delete "/model", to: "model#delete_model"

  delete "/color", to: "color#delete_color"
  
end
