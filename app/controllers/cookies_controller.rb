class CookiesController < ApplicationController
  def index
    if params[:forget]
      cookies.delete("parameter")
    end

    parameter = params[:parameter] || cookies["parameter"]
    if parameter.present?
      cookies["parameter"] = parameter
    else
      cookies.delete("parameter")
    end

    render plain: parameter || "nil"
  end
end
