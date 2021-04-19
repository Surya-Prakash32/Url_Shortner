class LinkController < ApplicationController
  include LinkHelper

  def long_to_short
    long_url=params['original_url']
    render json: longToShort(long_url)
  end


  def short_to_long
    short_url=params[:short_url]
    longurl,status=shortToLong(short_url)
    render json: longurl,status:status
  end

end
