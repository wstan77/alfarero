class Admin::AdminsController < ApplicationController
  before_action :set_admin_admin, only: [:show, :edit, :update, :destroy]
  before_action :set_title

  layout "admin"
  # GET /admin/admins
  # GET /admin/admins.json
  def index
    @admin_admins = Admin.active
    if @admin_admins.size == 0
      flash[:notice] = "No hay administradores"
    end
    @page_subtitle = "Listado de administradores internos"
  end

  # GET /admin/admins/1
  # GET /admin/admins/1.json
  def show 
    if @admin_admin.nil?
      redirect_to admin_admins_path
      flash[:warning] = "No existe ese administador"
    else
      @page_subtitle = "Detalle del administrador: #{@admin_admin.full_name}"
    end
  end

  # GET /admin/admins/new
  def new
    @admin_admin = Admin.new
    @page_subtitle = "Nuevo administrador"
  end

  # GET /admin/admins/1/edit
  def edit
  end

  # POST /admin/admins
  # POST /admin/admins.json
  def create
    @admin_admin = Admin.new(admin_admin_params)

    respond_to do |format|
      if @admin_admin.save
        format.html { redirect_to admin_admins_path, notice: 'Administrador creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: admin_admins_path }
      else
        format.html { render :new }
        format.json { render json: @admin_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/admins/1
  # PATCH/PUT /admin/admins/1.json
  def update
    respond_to do |format|
      if @admin_admin.update(admin_admin_params)
        format.html { redirect_to admin_admins_path, notice: 'Administrador ha sido  modificado.' }
        format.json { render :show, status: :ok, location: admin_admins_path }
      else
        format.html { render :edit }
        format.json { render json: @admin_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/admins/1
  # DELETE /admin/admins/1.json
  def destroy
    @admin_admin.update_column("is_deleted", true)
    respond_to do |format|
      format.html { redirect_to admin_admins_path, notice: 'Administrador desactivado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin
      @admin_admin = Admin.find_by(id: params[:id], is_deleted: false) rescue nil
    end

    def set_title
      @page_title = "Administradores"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_admin_params
      params.require(:admin).permit! 
    end
end
