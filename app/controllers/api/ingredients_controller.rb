class Api::IngredientsController < ApplicationController
  before_action :set_api_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /api/ingredients
  # GET /api/ingredients.json
  def index
    @api_ingredients = Api::Ingredient.all
    render json: @api_ingredients
  end

  # GET /api/ingredients/1
  # GET /api/ingredients/1.json
  def show
    render json: @api_ingredient
  end

  # GET /api/ingredients/new
  def new
    @api_ingredient = Api::Ingredient.new
  end

  # GET /api/ingredients/1/edit
  def edit
  end

  # POST /api/ingredients
  # POST /api/ingredients.json
  def create
    @api_ingredient = Api::Ingredient.new(api_recipe_params)
    @api_ingredient.save!
    render nothing: true
  end

  # PATCH/PUT /api/ingredients/1
  # PATCH/PUT /api/ingredients/1.json
  def update
    @api_ingredient.save!
    render nothing: true
  end

  # DELETE /api/ingredients/1
  # DELETE /api/ingredients/1.json
  def destroy
    @api_ingredient.destroy!
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_ingredient
      p "DDDDDDDDDDDDDDDDDDDDD#{params[:id]}"
      p "QQQQQQQQQQQQQQQQQQQQQQ#{params}"
      @api_ingredient = Api::Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_ingredient_params
      params.require(:ingredients).permit(:recipe_id, :amount, :amountUnits, :ingredientName)
    end
end
