class SprintBacklogItemsController < ApplicationController
  before_action :set_sprint_backlog_item, only: [:show, :edit, :update, :destroy]

  # GET /sprint_backlog_items
  # GET /sprint_backlog_items.json
  def index
    @sprint_backlog_items = SprintBacklogItem.all
  end

  # GET /sprint_backlog_items/1
  # GET /sprint_backlog_items/1.json
  def show
  end

  # GET /sprint_backlog_items/new
  def new
    @sprint_backlog_item = SprintBacklogItem.new
  end

  # GET /sprint_backlog_items/1/edit
  def edit
  end

  # POST /sprint_backlog_items
  # POST /sprint_backlog_items.json
  def create
    @sprint_backlog_item = SprintBacklogItem.new(sprint_backlog_item_params)

    respond_to do |format|
      if @sprint_backlog_item.save
        format.html { redirect_to @sprint_backlog_item, notice: 'Sprint backlog item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_backlog_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_backlog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_backlog_items/1
  # PATCH/PUT /sprint_backlog_items/1.json
  def update
    respond_to do |format|
      if @sprint_backlog_item.update(sprint_backlog_item_params)
        format.html { redirect_to @sprint_backlog_item, notice: 'Sprint backlog item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_backlog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_backlog_items/1
  # DELETE /sprint_backlog_items/1.json
  def destroy
    @sprint_backlog_item.destroy
    respond_to do |format|
      format.html { redirect_to sprint_backlog_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_backlog_item
      @sprint_backlog_item = SprintBacklogItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_backlog_item_params
      params.require(:sprint_backlog_item).permit(:backlog_item_id, :activity, :iteration, :state, :user_id)
    end
end
