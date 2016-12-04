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
end
