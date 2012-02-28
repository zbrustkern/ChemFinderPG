class FgroupsController < ApplicationController
  # GET /fgroups
  # GET /fgroups.json
  def index
    @fgroups = Fgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fgroups }
    end
  end

  # GET /fgroups/1
  # GET /fgroups/1.json
  def show
    @fgroup = Fgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fgroup }
    end
  end

  # GET /fgroups/new
  # GET /fgroups/new.json
  def new
    @fgroup = Fgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fgroup }
    end
  end

  # GET /fgroups/1/edit
  def edit
    @fgroup = Fgroup.find(params[:id])
  end

  # POST /fgroups
  # POST /fgroups.json
  def create
    @fgroup = Fgroup.new(params[:fgroup])

    respond_to do |format|
      if @fgroup.save
        format.html { redirect_to @fgroup, notice: 'Fgroup was successfully created.' }
        format.json { render json: @fgroup, status: :created, location: @fgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @fgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fgroups/1
  # PUT /fgroups/1.json
  def update
    @fgroup = Fgroup.find(params[:id])

    respond_to do |format|
      if @fgroup.update_attributes(params[:fgroup])
        format.html { redirect_to @fgroup, notice: 'Fgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fgroups/1
  # DELETE /fgroups/1.json
  def destroy
    @fgroup = Fgroup.find(params[:id])
    @fgroup.destroy

    respond_to do |format|
      format.html { redirect_to fgroups_url }
      format.json { head :no_content }
    end
  end
end
