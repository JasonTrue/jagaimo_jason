import Config

alias Still.Preprocessor.{
  OutputPath,
  Save
  }

config :still,
  dev_layout: false,
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  ignore_files: ["assets"],
  template_helpers: [Jagaimo.TemplateHelpers],
  watchers: [
    npx: ["tailwindcss", "-i", "global.css", "-o", "../css/global.css", "--watch",  cd: "priv/site/assets"] #"--minify",
  ],
  pass_through_copy: [~r/\.svg$/, {"_well_known", ".well_known"}],
  preprocessors: %{
#    ".css" => [StillTailwind.PostcssPreprocessor, OutputPath, Save],
    ".svg" => [OutputPath, Save]
  }

import_config("#{Mix.env()}.exs")
