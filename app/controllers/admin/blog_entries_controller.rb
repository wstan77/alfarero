class Admin::BlogEntriesController < ApplicationController
  before_action :set_admin_blog_entry, only: [:show, :edit, :update, :destroy]
  layout "admin"
  # GET /admin/blog_entries
  # GET /admin/blog_entries.json
  def index
    @admin_blog_entries = Admin::BlogEntry.all
  end

  # GET /admin/blog_entries/1
  # GET /admin/blog_entries/1.json
  def show
  end

  # GET /admin/blog_entries/new
  def new
    @admin_blog_entry = Admin::BlogEntry.new
  end

  # GET /admin/blog_entries/1/edit
  def edit
  end

  # POST /admin/blog_entries
  # POST /admin/blog_entries.json
  def create
    @admin_blog_entry = Admin::BlogEntry.new(admin_blog_entry_params)

    respond_to do |format|
      if @admin_blog_entry.save
        format.html { redirect_to @admin_blog_entry, notice: 'Blog entry was successfully created.' }
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
        format.html { redirect_to @admin_blog_entry, notice: 'Blog entry was successfully updated.' }
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
      @admin_blog_entry = Admin::BlogEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_blog_entry_params
      params.fetch(:admin_blog_entry, {})
    end
end
