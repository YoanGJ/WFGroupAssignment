class ModuleAdminsController < ApplicationController
  before_action :set_module_admin, only: [:show, :edit, :update, :destroy]

  # GET /module_admins
  # GET /module_admins.json
  def index
    @module_admins = ModuleAdmin.all
  end

  # GET /module_admins/1
  # GET /module_admins/1.json
  def show
  end

  # GET /module_admins/new
  def new
    @module_admin = ModuleAdmin.new
  end

  # GET /module_admins/1/edit
  def edit
  end

  # POST /module_admins
  # POST /module_admins.json
  def create
    @module_admin = ModuleAdmin.new(module_admin_params)

    respond_to do |format|
      if @module_admin.save
        format.html { redirect_to @module_admin, notice: 'Module admin was successfully created.' }
        format.json { render :show, status: :created, location: @module_admin }
      else
        format.html { render :new }
        format.json { render json: @module_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_admins/1
  # PATCH/PUT /module_admins/1.json
  def update
    respond_to do |format|
      if @module_admin.update(module_admin_params)
        format.html { redirect_to @module_admin, notice: 'Module admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @module_admin }
      else
        format.html { render :edit }
        format.json { render json: @module_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_admins/1
  # DELETE /module_admins/1.json
  def destroy
    @module_admin.destroy
    respond_to do |format|
      format.html { redirect_to module_admins_url, notice: 'Module admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_admin
      @module_admin = ModuleAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module_admin_params
      params.require(:module_admin).permit(:name, :surname, :email, :password, :password_confirmation)
    end
end
