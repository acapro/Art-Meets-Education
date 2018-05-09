module KidsHelper
  def prev_kid(kid)
    if @kid.prev
      link_to t('nav.prev'), page_kid_path(@kid.prev)
    else
      t('nav.prev')
    end
  end

  def next_kid(kid)
    if @kid.next
      link_to t('nav.next'), page_kid_path(@kid.next)
    else
      t('nav.next')
    end
  end

  def get_vimeo_thumb(video_url)
    vimeo_video_id           = video_url.split('/').last
    vimeo_video_json_url     = "https://vimeo.com/api/v2/video/%s.json" % vimeo_video_id   # API call
    # Parse the JSON and extract the thumbnail_large url
    thumbnail_image_location = JSON.parse(open(vimeo_video_json_url).read).first['thumbnail_large'] rescue nil
    if thumbnail_image_location
      encoded_url = URI.encode(thumbnail_image_location)
      encoded_url = URI.parse(thumbnail_image_location)
      encoded_url.scheme = 'https'
      return image_tag thumbnail_image_location
    else
      return ''
    end
  end
end
