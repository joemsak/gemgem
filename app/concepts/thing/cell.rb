class Thing::Cell < ::Cell::Concept
  include ::Cell::Erb

  def show
    render
  end

  private
  property :name
  property :description

  def edit_link
    link_to 'edit', edit_thing_path(model)
  end

  public
  class TableRows < ::Cell::Concept
    def show
      concept("thing/cell", collection: Thing.all)
    end
  end
end
