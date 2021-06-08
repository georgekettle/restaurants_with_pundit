class DashboardsController < ApplicationController
  def show
    # orders that I've ordered
    @orders = Order.where(user_id: current_user.id)
    # orders for the flats that I created
    @my_orders = Order.where(flat: current_user.flats)
    @my_listings = current_user.flats
  end
end
