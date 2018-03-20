defmodule Test.Support.LiquidSimulator do
  @moduledoc """
  Mocks calls to Liquid inputs / outputs
  """
  def template_output do
    %Liquid.Template{
      blocks: [],
      presets: %{},
      root: %Liquid.Block{
        blank: false,
        condition: nil,
        elselist: [],
        iterator: [],
        markup: nil,
        name: :document,
        nodelist: [
          %Liquid.Tag{
            attributes: [],
            blank: true,
            markup: "hello='hello'",
            name: :assign,
            parts: []
          },
          %Liquid.Variable{
            filters: [],
            literal: nil,
            name: "hello",
            parts: ["hello"]
          },
          %Liquid.Variable{
            filters: [],
            literal: nil,
            name: "world",
            parts: ["world"]
          }
        ],
        parts: []
      }
    }
  end

  def render_output do

    {
      :ok,
      "helloworld",
      %Liquid.Context{
        assigns: %{
          "hello" => "hello",
          "world" => "world"
        },
        blocks: [],
        break: false,
        continue: false,
        extended: false,
        extra_tags: %{},
        global_filter: nil,
        offsets: %{},
        presets: %{},
        registers: %{},
        template: %Liquid.Template{
          blocks: [],
          presets: %{},
          root: %Liquid.Block{
            blank: false,
            condition: nil,
            elselist: [],
            iterator: [],
            markup: nil,
            name: :document,
            nodelist: [
              %Liquid.Tag{
                attributes: [],
                blank: true,
                markup: "hello='hello'",
                name: :assign,
                parts: []
              },
              %Liquid.Variable{
                filters: [],
                literal: nil,
                name: "hello",
                parts: ["hello"]
              },
              %Liquid.Variable{
                filters: [],
                literal: nil,
                name: "world",
                parts: ["world"]
              }
            ],
            parts: []
          }
        }
      }
    }
  end


  def render_output_register do
    {:ok, "helloworld",
      %Liquid.Context{
        assigns: %{"hello" => "hello", "world" => "world"},
        blocks: [],
        break: false,
        continue: false,
        extended: false,
        extra_tags: %{},
        global_filter: nil,
        offsets: %{},
        presets: %{},
        registers: %{test: "hallo"},
        template: %Liquid.Template{
          blocks: [],
          presets: %{},
          root: %Liquid.Block{
            blank: false,
            condition: nil,
            elselist: [],
            iterator: [],
            markup: nil,
            name: :document,
            nodelist: [
              %Liquid.Tag{
                attributes: [],
                blank: true,
                markup: "hello='hello'",
                name: :assign,
                parts: []
              },
              %Liquid.Variable{
                filters: [],
                literal: nil,
                name: "hello",
                parts: ["hello"]
              },
              %Liquid.Variable{
                filters: [],
                literal: nil,
                name: "world",
                parts: ["world"]
              }
            ],
            parts: []
          }
        }
      }}

  end


end