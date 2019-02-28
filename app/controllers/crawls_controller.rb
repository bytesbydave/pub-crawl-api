class CrawlsController < ApplicationController
  before_action :set_crawl, only: [:show, :update, :destroy]

  # GET /crawls
  def index
    @crawls = Crawl.all

    render json: @crawls
  end

  # GET /crawls/1
  def show
    render json: @crawl
  end

  # POST /crawls
  def create
    @crawl = Crawl.new(crawl_params)

    if @crawl.save
      render json: @crawl, status: :created, location: @crawl
    else
      render json: @crawl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crawls/1
  def update
    if @crawl.update(crawl_params)
      render json: @crawl
    else
      render json: @crawl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crawls/1
  def destroy
    @crawl.destroy
  end

  def locations
    crawl = Crawl.find(params[:crawl_id])
    render json: crawl.locations
  end

  def add_locations
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crawl
      @crawl = Crawl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crawl_params
      params.require(:crawl).permit(:name, :description, :userId, :image)
    end
end
