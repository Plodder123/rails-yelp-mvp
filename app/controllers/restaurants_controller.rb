class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: %i[new show create]
  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

    # def create
    #   @restaurant = Restaurant.find(params[:restaurant_id])
    #   @review = Review.new(review_params)
    #   @review.restaurant = @restaurant
    #   if @review.save
    #     redirect_to restaurant_path(@restaurant), status: :see_other
    #   else
    #     render :new, status: :unprocessable_entity
    #   end
    # end



  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path, status: :see_other
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
