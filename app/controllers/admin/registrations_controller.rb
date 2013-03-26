class Admin::RegistrationsController < Admin::BaseController
  layout 'admin'
  # GET /admin/news
  # GET /admin/news.json
  def index
    @admin_registrations = Registration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_registrations }
    end
  end

  # GET /admin/news/1
  # GET /admin/news/1.json
  def show
    @admin_registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_registration }
    end
  end

  # GET /admin/news/new
  # GET /admin/news/new.json
  def new
    @admin_registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_registration }
    end
  end

  # GET /admin/news/1/edit
  def edit
    @admin_registration = Registration.find(params[:id])
  end

  # POST /admin/news
  # POST /admin/news.json
  def create
    @admin_registration = Registration.new(params[:registration])

    respond_to do |format|
      if @admin_registration.save
        format.html { redirect_to [:admin, @admin_registration], notice: 'Registration was successfully created.' }
        format.json { render json: @admin_registration, status: :created, location: @admin_registration }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/news/1
  # PUT /admin/news/1.json
  def update
    @admin_registration = Registration.find(params[:id])

    respond_to do |format|
      if @admin_registration.update_attributes(params[:registration])
        format.html { redirect_to [:admin, @admin_registration], notice: 'Registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/news/1
  # DELETE /admin/news/1.json
  def destroy
    @admin_registration = Registration.find(params[:id])
    @admin_registration.destroy

    respond_to do |format|
      format.html { redirect_to admin_registrations_url }
      format.json { head :no_content }
    end
  end
end
