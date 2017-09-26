class DocsController < ApplicationController
  before_action :authenticate_utilizador!, except: [:index]
  def index
  end
end
