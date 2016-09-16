defmodule Scraper do
  use Hound.Helpers

  def start do
    IO.puts "starting"
    Hound.start_session
    navigate_to "https://id.wikipedia.org/wiki/Daftar_provinsi_di_Indonesia"

    IEx.pry
    # Hound.end_session
  end
end