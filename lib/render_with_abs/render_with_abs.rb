module RenderWithAbs
  def render_with_abs(partial_path)
    if rand > 0.5
      partial_path << "_a"
    else
      partial_path << "_b"
    end
  end
end
