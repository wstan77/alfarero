class Admin::BlogEntriesController < ApplicationController
  before_action :set_admin_blog_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  layout "admin"
  # GET /admin/blog_entries
  # GET /admin/blog_entries.json
  def index
    @blog_entries = BlogEntry.all
    if @blog_entries.size == 0
      flash[:notice] = "No hay entradas en el blog"
    end
    @page_subtitle = "Listado completo"
  end

  # GET /admin/blog_entries/1
  # GET /admin/blog_entries/1.json
  def show
  end

  # GET /admin/blog_entries/new
  def new
    @admin_blog_entry = BlogEntry.new
    @page_subtitle = "Crear nueva entrada"
  end

  # GET /admin/blog_entries/1/edit
  def edit
  end

  # POST /admin/blog_entries
  # POST /admin/blog_entries.json
  def create
    @admin_blog_entry = BlogEntry.new(admin_blog_entry_params)
    @page_subtitle = "Crear nueva entrada"
    respond_to do |format|
      if @admin_blog_entry.save
        format.html { redirect_to admin_blog_entries_path, notice: 'Blog entry was successfully created.' }
        format.json { render :show, status: :created, location: @admin_blog_entry }
      else
        format.html { render :new }
        format.json { render json: @admin_blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/blog_entries/1
  # PATCH/PUT /admin/blog_entries/1.json
  def update
    respond_to do |format|
      if @admin_blog_entry.update(admin_blog_entry_params)
        format.html { redirect_to admin_blog_entries_path, notice: 'Blog entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_blog_entry }
      else
        format.html { render :edit }
        format.json { render json: @admin_blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_entries/1
  # DELETE /admin/blog_entries/1.json
  def destroy
    @admin_blog_entry.destroy
    respond_to do |format|
      format.html { redirect_to admin_blog_entries_url, notice: 'Blog entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_blog_entry
      @admin_blog_entry = BlogEntry.find(params[:id])
    end

    def set_title
      @page_title = "Administrador del Blog"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_blog_entry_params
      params.require(:blog_entry).permit!
    end
end
