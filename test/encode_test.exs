defmodule EncodeTest do
  use ExUnit.Case
  doctest Runlength

  test "KUBS" do
    assert Runlength.encode("KUBS") == "1K1U1B1S"
  end

  test "KUUUUUUBS" do
    assert Runlength.encode("KUUUUUUBS") == "1K6U1B1S"
  end

  test "JJJTTWPPMMMMYYYYYYYYYVVVVVV" do
    assert Runlength.encode("JJJTTWPPMMMMYYYYYYYYYVVVVVV") == "3J2T1W2P4M9Y6V"
  end
end
