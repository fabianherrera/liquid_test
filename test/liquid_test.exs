defmodule Test.LiquidTest do
  use ExUnit.Case
  # doctest LiquidTest

  alias Liquid.Template, as: Template
  alias Test.Support.LiquidSimulator

  setup_all do
    Liquid.start
    :ok
  end

  test "compile a template from a string" do
    template = Template.parse("{% assign hello='hello' %}{{ hello }}{{world}}")
    assert template == LiquidSimulator.template_output
  end

  test "render the template with a keyword list representing the local variables" do
    template = Template.parse("{% assign hello='hello' %}{{ hello }}{{world}}")
    { :ok, rendered, data } = Template.render(template, %{"world" => "world"})
    assert { :ok, rendered, data } == LiquidSimulator.render_output
  end

  test "assign registers in custom tags" do
    template = Template.parse("{% assign hello='hello' %}{{ hello }}{{world}}")
    { :ok, rendered, data } = Template.render(template, %{"world" => "world"}, registers: %{test: "hallo"})
    assert { :ok, rendered, data } == LiquidSimulator.render_output_register
  end


end
