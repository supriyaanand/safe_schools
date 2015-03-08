module ReviewsHelper
  def render_stars(value)
    output = ''
    if (1..5).include?(value.floor)
      value.floor.times { output += image_tag('star.gif')}
    end
    output.html_safe
  end
end
