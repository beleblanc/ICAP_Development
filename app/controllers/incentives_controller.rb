class IncentivesController < ApplicationController
  # GET /incentives
  # GET /incentives.xml
  def index
    @incentives = Incentive.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @incentives }
    end
  end

  # GET /incentives/1
  # GET /incentives/1.xml
  def show
    @incentive = Incentive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incentive }
    end
  end

  # GET /incentives/new
  # GET /incentives/new.xml
  def new
    @incentive = Incentive.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incentive }
    end
  end

  # GET /incentives/1/edit
  def edit
    @incentive = Incentive.find(params[:id])
  end

  # POST /incentives
  # POST /incentives.xml
  def create
    @incentive = Incentive.new(params[:incentive])

    respond_to do |format|
      if @incentive.save
        format.html { redirect_to(@incentive, :notice => 'Incentive was successfully created.') }
        format.xml  { render :xml => @incentive, :status => :created, :location => @incentive }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incentive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incentives/1
  # PUT /incentives/1.xml
  def update
    @incentive = Incentive.find(params[:id])

    respond_to do |format|
      if @incentive.update_attributes(params[:incentive])
        format.html { redirect_to(@incentive, :notice => 'Incentive was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incentive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incentives/1
  # DELETE /incentives/1.xml
  def destroy
    @incentive = Incentive.find(params[:id])
    @incentive.destroy

    respond_to do |format|
      format.html { redirect_to(incentives_url) }
      format.xml  { head :ok }
    end
  end
end
