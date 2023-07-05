class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    items = user.items

    render json: {
      id: user.id,
      username: user.username,
      city: user.city,
      items: items.map { |item|
        {
          id: item.id,
          name: item.name,
          description: item.description,
          price: item.price
        }
      }
    }
  end
end