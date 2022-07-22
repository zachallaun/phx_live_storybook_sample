defmodule Storybook.Components.Buttons.Dropdown do
  alias PhxLiveStorybookSampleWeb.Components.Dropdown

  use PhxLiveStorybook.Entry, :component

  def component, do: Dropdown
  def function, do: &Dropdown.dropdown/1
  def description, do: "A simple generic button."

  def variations do
    [
      %Variation{
        id: :default,
        description: "",
        attributes: %{
          label: "A dropdown"
        },
        slots: """
        <:entry path="#" label="Account settings"/>
        <:entry path="#" label="Support"/>
        <:entry path="#" label="License"/>
        """
      },
      %Variation{
        id: :custom_colors,
        attributes: %{
          :label => "A dropdown",
          :"bg-color" => "bg-green-600",
          :"hover-bg-color" => "bg-green-700",
          :"text-color" => "text-white"
        },
        slots: """
        <:entry path="#" label="Account settings"/>
        <:entry path="#" label="Support"/>
        <:entry path="#" label="License"/>
        """
      }
    ]
  end
end