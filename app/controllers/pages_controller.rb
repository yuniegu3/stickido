class PagesController < ApplicationController
  layout "pages_layout"
  def index
    @project = {name: "learn to program"}
    # @project[:name] = "learn to program"  #note: why did the :name not pass to template when made this way?
  end

  def project
  end
end
 