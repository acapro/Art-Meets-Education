module KidsHelper
  def prev_kid(kid)
    if @kid.prev
      link_to 'zurück', page_kid_path(@kid.prev)
    end
  end
  def next_kid(kid)
    if @kid.next
      link_to 'weiter', page_kid_path(@kid.next)
    end
  end
end
