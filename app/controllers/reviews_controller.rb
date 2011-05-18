class ReviewsController < ApplicationController
  # GET /reviews
  # GET /reviews.xml
  def index
    @reviews = Review.connection.select_all("
      SELECT r.*, 
      s.name as shopName,
      u.name as userName,
      b.name as baristaName,
      getReviewScore(r.id) as reviewScore
      FROM reviews r
      JOIN shops s on r.shop_id = s.id
      JOIN users u on r.user_id = u.id
      LEFT OUTER JOIN barista b ON r.barista_id = b.id
    ")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.xml
  def show
    @review = Review.connection.select_all("
      SELECT r.*, 
      s.name,
      u.name,
      b.name,
      getReviewScore(r.id) as reviewScore
      FROM reviews r
      JOIN shops s on r.shop_id = s.id
      JOIN users u on r.user_id = u.id
      LEFT OUTER JOIN barista b ON r.barista_id = b.id
      WHERE r.id = #{params[:id]}
    ")
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @review }
    end
  end

  # GET /reviews/new
  # GET /reviews/new.xml
  def new
	  @review = Review.new
	  @shopList = Shop.find(:all) #for the dropdown menu, we might need to filter or sort this later. 
	
    	respond_to do |format|
      		format.html # new.html.erb
      		format.xml  { render :xml => @review }
    	end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
    @shopList = Shop.find(:all) #for the dropdown menu, we might need to filter or sort this later.
  end

  # POST /reviews
  # POST /reviews.xml
  def create
    params[:review][:user_id] = current_user.id
    @review = Review.new(params[:review])

    respond_to do |format|
      if @review.save
        format.html { redirect_to(@review, :notice => 'Review was successfully created.') }
        format.xml  { render :xml => @review, :status => :created, :location => @review }
      else
        @shopList = Shop.find(:all)
        format.html { render :action => "new" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.xml
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to(@review, :notice => 'Review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.xml
  #def destroy
   # @review = Review.find(params[:id])
   # @review.destroy

   # respond_to do |format|
   #   format.html { redirect_to(reviews_url) }
   #   format.xml  { head :ok }
   # end
  #end
  
  #TODO: lock these down.
  def destroy
    @review = Review.find(params[:id])
    @review.update_attribute(:isActive, false)

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
      format.xml  { head :ok }
    end
  end
  
  def activate
    @review = Review.find(params[:id])
    @review.update_attribute(:isActive, true)

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
      format.xml  { head :ok }
    end
  end
  
  # demolish /reviews/1
  # demolish /reviews/1.xml
  def demolish
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
      format.xml  { head :ok }
    end
  end
end
