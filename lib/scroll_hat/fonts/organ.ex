defmodule ScrollHat.Font.Organ do
  @moduledoc """
  Organ Font

  Transposed from https://github.com/pimoroni/scroll-phat-hd/blob/master/library/scrollphathd/fonts/fontorgan.py
  """
  @behaviour ScrollHat.Font

  def char_matrix(char, brightness \\ 0xFF)

  def char_matrix(0x30, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x31, b) do
    [
      [b, b, b, b, b, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x32, b) do
    [
      [0x0, 0x0, 0x0, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x33, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x34, b) do
    [
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b]
    ]
  end

  def char_matrix(0x35, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x36, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x37, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b]
    ]
  end

  def char_matrix(0x38, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x39, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b]
    ]
  end

  def char_matrix(0x41, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b]
    ]
  end

  def char_matrix(0x42, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x43, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x44, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x45, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x46, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x47, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x48, b) do
    [
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b]
    ]
  end

  def char_matrix(0x49, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x4A, b) do
    [
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, 0x0, 0x0]
    ]
  end

  def char_matrix(0x4B, b) do
    [
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b]
    ]
  end

  def char_matrix(0x4C, b) do
    [
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x4D, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, b]
    ]
  end

  def char_matrix(0x4E, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b]
    ]
  end

  def char_matrix(0x4F, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x50, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x51, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x52, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x53, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x54, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x55, b) do
    [
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x56, b) do
    [
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [b, b, b, b, b, b, b, b, b, b, b, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, 0x0]
    ]
  end

  def char_matrix(0x57, b) do
    [
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end

  def char_matrix(0x58, b) do
    [
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [0x0, 0x0, b, b, b, b, b, b, b, b, b, 0x0, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b]
    ]
  end

  def char_matrix(0x59, b) do
    [
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]
    ]
  end

  def char_matrix(0x5A, b) do
    [
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, b],
      [0x0, 0x0, b, b, b, b, b, b, b, b, b, b, 0x0],
      [b, b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
      [b, b, b, b, b, b, b, b, b, b, b, b, b],
      [b, b, b, b, b, b, b, b, b, b, b, b, b]
    ]
  end
end
