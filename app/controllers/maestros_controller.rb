class MaestrosController < ApplicationController
  # GET /maestros
  # GET /maestros.xml
  def index
    @maestros = Maestro.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maestros }
    end
  end

  # GET /maestros/1
  # GET /maestros/1.xml
  def show
    @maestro = Maestro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maestro }
    end
  end

  # GET /maestros/new
  # GET /maestros/new.xml
  def new
    @maestro = Maestro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maestro }
    end
  end

  # GET /maestros/1/edit
  def edit
    @maestro = Maestro.find(params[:id])
  end

  # POST /maestros
  # POST /maestros.xml
  def create
    @maestro = Maestro.new(params[:maestro])

    respond_to do |format|
      if @maestro.save
        flash[:notice] = 'Maestro was successfully created.'
        format.html { redirect_to(@maestro) }
        format.xml  { render :xml => @maestro, :status => :created, :location => @maestro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maestro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maestros/1
  # PUT /maestros/1.xml
  def update
    @maestro = Maestro.find(params[:id])

    respond_to do |format|
      if @maestro.update_attributes(params[:maestro])
        flash[:notice] = 'Maestro was successfully updated.'
        format.html { redirect_to(@maestro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maestro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maestros/1
  # DELETE /maestros/1.xml
  def destroy
    @maestro = Maestro.find(params[:id])
    @maestro.destroy

    respond_to do |format|
      format.html { redirect_to(maestros_url) }
      format.xml  { head :ok }
    end
  end
end
