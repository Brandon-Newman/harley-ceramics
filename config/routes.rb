Rails.application.routes.draw do

  get "/catalog", to: "chassis#list_catalog"

  get "/motorcycle-chassis", to: "chassis#list_chassis" #done

  get "/models-by-chassis/:id", to: "model#list_models" #done

  get "/list-model-colors", to: "model#list_model_colors"

  get "/paint-colors", to: "color#list_all_colors" #done

  post "/new-chassis", to: "chassis#new_chassis" #done

  post "/new-model", to: "model#new_model"

  post "/new-color", to: "color#new_color" #done

  patch "/add-color-to-model", to: "model#add_color_to_model"

  delete "/delete-chassis", to: "chassis#delete_chassis"

  delete "/delete-model", to: "model#delete_model"

  delete "/delete-color", to: "color#delete_color"
  
end
