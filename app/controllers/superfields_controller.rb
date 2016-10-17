class SuperfieldsController < ApplicationController

  def show
    @id = params[:id]
    @superfield = params[:superfield]


    thing_query = ThingQuery.new({@superfield => @id})

    @things_count = thing_query.things_count
    @things = thing_query.things

    @things_in_collections = thing_query.things_in_collections
    @things_by_item_type = thing_query.things_by_item_type
    @things_by_authors = thing_query.things_by_authors
    @things_by_subjects = thing_query.things_by_subjects

  end
end
