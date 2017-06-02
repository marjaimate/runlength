defmodule DecodeTest do
  use ExUnit.Case
  doctest Runlength

  test "KUBS" do
    assert Runlength.decode("1K1U1B1S") == "KUBS"
  end

  test "KUUUUUUBS" do
    assert Runlength.decode("1K6U1B1S") == "KUUUUUUBS"
  end

  test "JJJTTWPPMMMMYYYYYYYYYVVVVVV" do
    assert Runlength.decode("3J2T1W2P4M9Y6V") == "JJJTTWPPMMMMYYYYYYYYYVVVVVV"
  end
end
