class CalllogsController < ApplicationController
  # GET /calllogs
  # GET /calllogs.xml
  def index
    @calllogs = Calllog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @calllogs }
    end
  end

  # GET /calllogs/1
  # GET /calllogs/1.xml
  def show
    @calllog = Calllog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @calllog }
    end
  end

  # GET /calllogs/new
  # GET /calllogs/new.xml
  def new
    @calllog = Calllog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @calllog }
    end
  end

  # GET /calllogs/1/edit
  def edit
    @calllog = Calllog.find(params[:id])
  end

  # POST /calllogs
  # POST /calllogs.xml
  def create
    @calllog = Calllog.new(params[:calllog])

    respond_to do |format|
      if @calllog.save
        format.html { redirect_to(@calllog, :notice => 'Calllog was successfully created.') }
        format.xml  { render :xml => @calllog, :status => :created, :location => @calllog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @calllog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /calllogs/1
  # PUT /calllogs/1.xml
  def update
    @calllog = Calllog.find(params[:id])

    respond_to do |format|
      if @calllog.update_attributes(params[:calllog])
        format.html { redirect_to(@calllog, :notice => 'Calllog was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @calllog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /calllogs/1
  # DELETE /calllogs/1.xml
  def destroy
    @calllog = Calllog.find(params[:id])
    @calllog.destroy

    respond_to do |format|
      format.html { redirect_to(calllogs_url) }
      format.xml  { head :ok }
    end
  end
end
