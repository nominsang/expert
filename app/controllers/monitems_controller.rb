class MonitemsController < ApplicationController
  before_action :authenticate_user!, only: %i[ create edit update destroy ]
  before_action :set_monitem, only: %i[ show edit update destroy ]

  # GET /monitems or /monitems.json
  def index
    @item = Item.find(params[:item_id])
    @monitems = @item.monitems.all
  end

  # GET /monitems/1 or /monitems/1.json
  def show
  end

  # GET /monitems/new
  def new
    @item = Item.find(params[:item_id])
    @monitem = @item.monitems.new
  end

  # GET /monitems/1/edit
  def edit
  end

  # POST /monitems or /monitems.json
  def create
    @item = Item.find(params[:item_id])
    @monitem = Monitem.new(monitem_params)

    respond_to do |format|
      if @monitem.save
        format.html { redirect_to [@monitem.item, @monitem], notice: "该蒙古文信息已保存" }
        format.json { render :show, status: :created, location: @monitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitems/1 or /monitems/1.json
  def update
    respond_to do |format|
      if @monitem.update(monitem_params)
        format.html { redirect_to item_monitem_url(@monitem.item, @monitem), notice: "该蒙古文信息已更新。" }
        format.json { render :show, status: :ok, location: @monitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitems/1 or /monitems/1.json
  def destroy
    @monitem.destroy

    respond_to do |format|
      format.html { redirect_to item_url(@monitem.item), notice: "该蒙古文信息已删除。" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitem
      @item = Item.find(params[:item_id])
      @monitem = @item.monitems.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitem_params
      params.require(:monitem).permit(:item_id, :name, :alias_name, :nation, :birthplace, :occupation, :biographical_text)
    end
end
