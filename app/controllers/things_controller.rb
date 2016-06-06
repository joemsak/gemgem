class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def new
    form Thing::Create
  end

  def create
    run Thing::Create do |op|
      return redirect_to things_url
    end

    render :new
  end

  def edit
    form Thing::Update
    render :new
  end

  def update
    run Thing::Update do |op|
      return redirect_to things_url
    end

    render :new
  end
end
