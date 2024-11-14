defmodule Pocky.FeedsTest do
  use Pocky.DataCase

  alias Pocky.Feeds

  describe "products" do
    alias Pocky.Feeds.Product

    import Pocky.FeedsFixtures

    @invalid_attrs %{title: nil, body: nil, price: nil}

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert Feeds.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Feeds.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      valid_attrs = %{title: "some title", body: "some body", price: 42}

      assert {:ok, %Product{} = product} = Feeds.create_product(valid_attrs)
      assert product.title == "some title"
      assert product.body == "some body"
      assert product.price == 42
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Feeds.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      update_attrs = %{title: "some updated title", body: "some updated body", price: 43}

      assert {:ok, %Product{} = product} = Feeds.update_product(product, update_attrs)
      assert product.title == "some updated title"
      assert product.body == "some updated body"
      assert product.price == 43
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Feeds.update_product(product, @invalid_attrs)
      assert product == Feeds.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Feeds.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Feeds.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Feeds.change_product(product)
    end
  end
end
