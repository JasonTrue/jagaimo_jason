defmodule Jagaimo.TemplateHelpers do

  alias Still.Compiler.TemplateHelpers.ContentTag

  def maybe_render_icon(_env, _, opts \\ [])

  def maybe_render_icon(_env, nil, _), do: nil

  def maybe_render_icon(_env, path, opts) do
    ContentTag.render("img", "", [{:src, path} | opts])
  end
end