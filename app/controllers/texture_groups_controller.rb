class TextureGroupsController < ApplicationController
  before_action :set_texture_group, only: %i[ show edit update destroy ]

  # GET /texture_groups or /texture_groups.json
  def index
    @texture_groups = TextureGroup.all
  end

  # GET /texture_groups/1 or /texture_groups/1.json
  def show
  end

  # GET /texture_groups/new
  def new
    @texture_group = TextureGroup.new
  end

  # GET /texture_groups/1/edit
  def edit
  end

  # POST /texture_groups or /texture_groups.json
  def create
    @texture_group = TextureGroup.new(texture_group_params)

    respond_to do |format|
      if @texture_group.save
        format.html { redirect_to @texture_group, notice: "Texture group was successfully created." }
        format.json { render :show, status: :created, location: @texture_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @texture_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /texture_groups/1 or /texture_groups/1.json
  def update
    respond_to do |format|
      if @texture_group.update(texture_group_params)
        format.html { redirect_to @texture_group, notice: "Texture group was successfully updated." }
        format.json { render :show, status: :ok, location: @texture_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @texture_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texture_groups/1 or /texture_groups/1.json
  def destroy
    @texture_group.destroy!

    respond_to do |format|
      format.html { redirect_to texture_groups_path, status: :see_other, notice: "Texture group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_texture_group
      @texture_group = TextureGroup.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def texture_group_params
      params.expect(texture_group: [ :material, :refined, :smoothRepeat ])
    end
end
