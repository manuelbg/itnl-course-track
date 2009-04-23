class PeriodosController < ApplicationController
  before_filter :cargar_maestro
  # GET /periodos
  # GET /periodos.xml
  def cargar_maestro
    @maestro = Maestro.find(params[:maestro_id])
  end
  def index
    @periodos = @maestro.periodos.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @periodos }
    end
  end

  # GET /periodos/1
  # GET /periodos/1.xml
  def show
    @periodo = Periodo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @periodo }
    end
  end

  # GET /periodos/new
  # GET /periodos/new.xml
  def new
    @periodo = Periodo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @periodo }
    end
  end

  # GET /periodos/1/edit
  def edit
    @periodo = Periodo.find(params[:id])
  end

  # POST /periodos
  # POST /periodos.xml
  def create
    @periodo = Periodo.new(params[:periodo])

    respond_to do |format|
      if @periodo.save
        flash[:notice] = 'Periodo was successfully created.'
        format.html { redirect_to(@periodo) }
        format.xml  { render :xml => @periodo, :status => :created, :location => @periodo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @periodo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /periodos/1
  # PUT /periodos/1.xml
  def update
    @periodo = Periodo.find(params[:id])

    respond_to do |format|
      if @periodo.update_attributes(params[:periodo])
        flash[:notice] = 'Periodo was successfully updated.'
        format.html { redirect_to(@periodo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @periodo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /periodos/1
  # DELETE /periodos/1.xml
  def destroy
    @periodo = Periodo.find(params[:id])
    @periodo.destroy

    respond_to do |format|
      format.html { redirect_to(periodos_url) }
      format.xml  { head :ok }
    end
  end
end
