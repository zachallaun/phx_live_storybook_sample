defmodule Storybook.Components.List do
  use PhxLiveStorybook.Story, :component

  def function, do: &PhxLiveStorybookSample.Components.List.list/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{
          entries: ~w(apple banana cherry)
        },
        let: :entry,
        slots: [
          "I like <%= entry %>"
        ]
      }
    ]
  end
end
