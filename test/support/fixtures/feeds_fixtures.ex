defmodule Pocky.FeedsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Pocky.Feeds` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        body: "some body",
        price: 42,
        title: "some title"
      })
      |> Pocky.Feeds.create_product()

    product
  end
end
