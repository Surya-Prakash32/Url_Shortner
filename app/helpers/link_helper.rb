module LinkHelper
  EXPIRE_TIME = 86400

  def check_expired(id)
    #byebug
    begin
      link=Link.find(id)
      time=link.created_at
      if Time.now.utc - time > EXPIRE_TIME
        return "url is expired",200
      else
        return link,200
      end
    rescue
      return "Invalid request",404
    end

  end


  def shortToLong(short_url)
    id=short_url.to_i(36)
    return check_expired(id)
  end

  def longToShort(long_url)
    id=Link.create_new_url(long_url)

    if id
      #@link=Link.find(@obj.id)
      #@tmp=10**10 + @obj.id
      url_extension=id.to_s(36)
      short_url = "http://localhost:3000/#{url_extension}"
      return short_url
    else
      return "Invalid url"
    end
  end
end
