class Admin::CapsulesController < ApplicationController
  before_action :set_admin_capsule, only: [:show, :edit, :update, :destroy]
  layout "admin"
  # GET /admin/capsules
  # GET /admin/capsules.json
  def index
    @admin_capsules = Admin::Capsule.all
  end

  # GET /admin/capsules/1
  # GET /admin/capsules/1.json
  def show
  end

  # GET /admin/capsules/new
  def new
    @admin_capsule = Admin::Capsule.new
  end

  # GET /admin/capsules/1/edit
  def edit
  end

  # POST /admin/capsules
  # POST /admin/capsules.json
  def create
    @admin_capsule = Admin::Capsule.new(admin_capsule_params)
    @admin_capsule.admin_id = current_admin.id
    respond_to do |format|
      if @admin_capsule.save
        format.html { redirect_to @admin_capsule, notice: 'Capsule was successfully created.' }
        format.json { render :show, status: :created, location: @admin_capsule }
      else
        format.html { render :new }
        format.json { render json: @admin_capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/capsules/1
  # PATCH/PUT /admin/capsules/1.json
  def update
    respond_to do |format|
      if @admin_capsule.update(admin_capsule_params)
        format.html { redirect_to @admin_capsule, notice: 'Capsule was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_capsule }
      else
        format.html { render :edit }
        format.json { render json: @admin_capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/capsules/1
  # DELETE /admin/capsules/1.json
  def destroy
    @admin_capsule.destroy
    respond_to do |format|
      format.html { redirect_to admin_capsules_url, notice: 'Capsule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_capsule
      @admin_capsule = Admin::Capsule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_capsule_params
      params.fetch(:admin_capsule, {})
    end
end
