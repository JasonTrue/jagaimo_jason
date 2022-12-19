defmodule Jagaimo.TemplateHelpers do

  alias Still.Compiler.TemplateHelpers.ContentTag

  def maybe_render_icon(_env, _, opts \\ [])

  def maybe_render_icon(_env, nil, _), do: nil

  def maybe_render_icon(_env, path, opts) do
    ContentTag.render("img", "", [{:src, path} | opts])
  end

  def social_cards(env) do
    IO.inspect(env)
    twitter = get_in(env, [:meta, :twitter])
    |> Enum.map(fn {key, value} ->
      ContentTag.render("meta", "", name: "twitter:#{key}", value: value )
    end)

    og = get_in(env, [:meta, :og])
              |> Enum.map(fn {key, value} ->
      ContentTag.render("meta", "", name: "og:#{key}", value: value )
    end)

    twitter ++ og |> Enum.join()
  end
end