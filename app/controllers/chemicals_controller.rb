class ChemicalsController < ApplicationController
  # GET /chemicals
  # GET /chemicals.json
  def index
    @chemicals = Chemical.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chemicals }
    end
  end

  # GET /chemicals/1
  # GET /chemicals/1.json
  def show
    @chemical = Chemical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chemical }
    end
  end

  # GET /chemicals/new
  # GET /chemicals/new.json
  def new
    @chemical = Chemical.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chemical }
    end
  end

  # GET /chemicals/1/edit
  def edit
    @chemical = Chemical.find(params[:id])
  end

  # POST /chemicals
  # POST /chemicals.json
  def create
    @chemical = Chemical.new(params[:chemical])

    respond_to do |format|
      if @chemical.save
        format.html { redirect_to @chemical , notice: 'Chemical was successfully created.' }
        format.json { render json: @chemical, status: :created, location: @chemical }
      else
        format.html { render action: "new" }
        format.json { render json: @chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chemicals/1
  # PUT /chemicals/1.json
  def update
    
    params[:chemical][:fgroup_ids] ||= []
    
    @chemical = Chemical.find(params[:id])

    respond_to do |format|
      if @chemical.update_attributes(params[:chemical])
        format.html { redirect_to @chemical, notice: 'Chemical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chemicals/1
  # DELETE /chemicals/1.json
  def destroy
    @chemical = Chemical.find(params[:id])
    @chemical.destroy

    respond_to do |format|
      format.html { redirect_to chemicals_url }
      format.json { head :no_content }
    end
  end
end
