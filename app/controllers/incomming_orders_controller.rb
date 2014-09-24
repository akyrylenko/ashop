class IncommingOrdersController < ApplicationController
  # GET /incomming_orders
  # GET /incomming_orders.json
  def index
    @incomming_orders = IncommingOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incomming_orders }
    end
  end

  # GET /incomming_orders/1
  # GET /incomming_orders/1.json
  def show
    @incomming_order = IncommingOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incomming_order }
    end
  end

  # GET /incomming_orders/new
  # GET /incomming_orders/new.json
  def new
    @incomming_order = IncommingOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incomming_order }
    end
  end

  # GET /incomming_orders/1/edit
  def edit
    @incomming_order = IncommingOrder.find(params[:id])
  end

  # POST /incomming_orders
  # POST /incomming_orders.json
  def create
    @incomming_order = IncommingOrder.new(params[:incomming_order])

    respond_to do |format|
      if @incomming_order.save
        format.html { redirect_to @incomming_order, notice: 'Incomming order was successfully created.' }
        format.json { render json: @incomming_order, status: :created, location: @incomming_order }
      else
        format.html { render action: "new" }
        format.json { render json: @incomming_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incomming_orders/1
  # PUT /incomming_orders/1.json
  def update
    @incomming_order = IncommingOrder.find(params[:id])

    respond_to do |format|
      if @incomming_order.update_attributes(params[:incomming_order])
        format.html { redirect_to @incomming_order, notice: 'Incomming order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incomming_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomming_orders/1
  # DELETE /incomming_orders/1.json
  def destroy
    @incomming_order = IncommingOrder.find(params[:id])
    @incomming_order.destroy

    respond_to do |format|
      format.html { redirect_to incomming_orders_url }
      format.json { head :no_content }
    end
  end
end
