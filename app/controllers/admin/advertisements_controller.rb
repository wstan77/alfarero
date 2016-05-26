class Admin::AdvertisementsController < ApplicationController
  before_action :set_admin_advertisement, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  layout "admin"
  # GET /admin/advertisements
  # GET /admin/advertisements.json
  def index
    @admin_advertisements = Advertisement.all 
    if @admin_advertisements.size == 0
      flash[:notice] = "No hay anuncios"
    end
    @page_subtitle = "Listado de anuncios"
  end

  # GET /admin/advertisements/1
  # GET /admin/advertisements/1.json
  def show
  end

  # GET /admin/advertisements/new
  def new
    @admin_advertisement = Advertisement.new
  end

  # GET /admin/advertisements/1/edit
  def edit
  end

  # POST /admin/advertisements
  # POST /admin/advertisements.json
  def create
    @admin_advertisement = Advertisement.new(admin_advertisement_params)
    @admin_advertisement.admin_id = current_admin.id
    respond_to do |format|
      if @admin_advertisement.save
        format.html { redirect_to admin_advertisements_path, notice: 'Advertisement was successfully created.' }
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
        format.html { redirect_to admin_advertisements_path, notice: 'Advertisement was successfully updated.' }
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
      @admin_advertisement = Advertisement.find(params[:id])
    end

    def set_title
      @page_title = "Anuncios en el Sitio"
    end

    # Never trust parameters from the scary internet, only allow the white list through. 
    def admin_advertisement_params
      params.require(:advertisement).permit! 
    end
end
