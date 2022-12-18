# Static site generator for [jason.jagaimo.com](https://Jason.Jagaimo.com)

Record scratch. Yep, that's me. You're probably wondering how you ended up in this situation.

This project exists solely because Elon Musk is a massively incompetent twit who continues to fail upward
while his narcissistic behavior disrupts the lives of people I care about.

All it does is generate a static site, hosted on Github Pages, at [jason.jagaimo.com](https://Jason.Jagaimo.com).

It's built using a static site generator called [Still](https://stillstatic.io/), which was programmed
in [Elixir](http://elixir-lang.org/). Why am I using it? Because I am an Elixir developer, and I wanted to give
it a try.

## Running

If you're using `asdf` and already have the elixir, erlang and nodejs plugins, just run the following:

````bash
asdf install
mix deps.get
mix still.dev
````

For sloppy reasons,

## Building the static site

Assuming you've done all those things above at least once before, you can generate the static site as Github
sees it by running

```bash
mix still.compile
```

This will generate all the static content and drop it in a folder at the root of the project in the `_site` directory.

Keep in mind that, in the current incarnation, `mix still.dev` generates a static `.css` file _in_ the repository that
must be checked in if you would like to see the changes upon deployment. I'll probably do something about that in the future,
but it suits my current workflow. I believe the "right" thing to do would be to move the generated css files
directly to the

## Contributing

I don't know why you'd want to, but if you spot a typo or something and want to fix it, do the usual Github thing:

1. Fork it
2. Make your changes
3. Commit/push
4. Create a [pull request](https://github.com/JasonTrue/jagaimo_jason/pulls)