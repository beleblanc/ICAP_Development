class PtidsController < ApplicationController
  # GET /ptids
  # GET /ptids.xml
  def index
    @ptids = Ptid.all
    @title = "Reviewing PTIDs'"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ptids }
    end
  end

  # GET /ptids/1
  # GET /ptids/1.xml
  def show
    @ptid = Ptid.find(params[:id])
    @title = Ptid.find(params[:id]).ptid + " Details"
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ptid }
    end
  end

  # GET /ptids/new
  # GET /ptids/new.xml
  def new
    @ptid = Ptid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ptid }
    end
  end

  # GET /ptids/1/edit
  def edit
    @ptid = Ptid.find(params[:id])
  end

  # POST /ptids
  # POST /ptids.xml
  def create
    @ptid = Ptid.new(params[:ptid])

    respond_to do |format|
      if @ptid.save
        format.html { redirect_to(@ptid, :notice => 'Ptid was successfully created.') }
        format.xml  { render :xml => @ptid, :status => :created, :location => @ptid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ptid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ptids/1
  # PUT /ptids/1.xml
  def update
    @ptid = Ptid.find(params[:id])

    respond_to do |format|
      if @ptid.update_attributes(params[:ptid])
        format.html { redirect_to(@ptid, :notice => 'Ptid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ptid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ptids/1
  # DELETE /ptids/1.xml
  def destroy
    @ptid = Ptid.find(params[:id])
    @ptid.destroy

    respond_to do |format|
      format.html { redirect_to(ptids_url) }
      format.xml  { head :ok }
    end
  end
end
