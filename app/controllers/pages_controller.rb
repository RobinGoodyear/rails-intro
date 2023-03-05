class PagesController < ApplicationController
  def home; end

  def about; end

  def contact
    @members = %w[thanh dimitri germain damien julien]

    return unless params[:member]

    @members = @members.select { |member| member.start_with?(params[:member]) }
  end
end
