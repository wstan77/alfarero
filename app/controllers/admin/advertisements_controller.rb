class Admin::AdvertisementsController < ApplicationController
  before_action :set_admin_advertisement, only: [:show, :edit, :update, :destroy]

  # GET /admin/advertisements
  # GET /admin/advertisements.json
  def index
    @admin_advertisements = Admin::Advertisement.all
  end

  # GET /admin/advertisements/1
  # GET /admin/advertisements/1.json
  def show
  end

  # GET /admin/advertisements/new
  def new
    @admin_advertisement = Admin::Advertisement.new
  end

  # GET /admin/advertisements/1/edit
  def edit
  end

  # POST /admin/advertisements
  # POST /admin/advertisements.json
  def create
    @admin_advertisement = Admin::Advertisement.new(admin_advertisement_params)

    respond_to do |format|
      if @admin_advertisement.save
        format.html { redirect_to @admin_advertisement, notice: 'Advertisement was successfully created.' }
        format.json { render :show, status: :created, location: @admin_advertisement }
      else
        format.html { render :new }
        format.json { render json: @admin_advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/advertisements/1
  # PATCH/PUT /admin/advertisements/1.json
  def update
    respond_to do |format|
      if @admin_advertisement.update(admin_advertisement_params)
        format.html { redirect_to @admin_advertisement, notice: 'Advertisement was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_advertisement }
      else
        format.html { render :edit }
        format.json { render json: @admin_advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/advertisements/1
  # DELETE /admin/advertisements/1.json
  def destroy
    @admin_advertisement.destroy
    respond_to do |format|
      format.html { redirect_to admin_advertisements_url, notice: 'Advertisement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_advertisement
      @admin_advertisement = Admin::Advertisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_advertisement_params
      params.fetch(:admin_advertisement, {})
    end
end
