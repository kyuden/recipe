class Api::RecipesController < ApplicationController
  before_action :set_api_recipe, only: [:show, :edit, :update, :destroy]

  # GET /api/recipes
  # GET /api/recipes.json
  def index
    @recipes = Api::Recipe.all
    render json: @recipes
  end

  # GET /api/recipes/1
  # GET /api/recipes/1.json
  def show
    render json: @recipe
  end

  # GET /api/recipes/new
  def new
    @recipe = Api::Recipe.new
  end

  # GET /api/recipes/1/edit
  def edit
  end

  # POST /api/recipes
  # POST /api/recipes.json
  def create
    @recipe = Api::Recipe.new(api_recipe_params)
    @recipe.save!
    render json: @recipe
  end

  # PATCH/PUT /api/recipes/1
  # PATCH/PUT /api/recipes/1.json
  def update
    @recipe.update_attributes(api_recipe_params)
    render json: @recipe
  end

  # DELETE /api/recipes/1
  # DELETE /api/recipes/1.json
  def destroy
    @recipe.destroy
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_recipe
      @recipe = Api::Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_recipe_params
      params.require(:recipe).permit(:title, :description, :instructions)
    end
end
