require IEx
defmodule Scraper do
  use Hound.Helpers

  def start do
    IO.puts "starting"
    Hound.start_session
    navigate_to "http://www.nomor.net"
    html = page_source()
    province_table = Floki.find(html, "[bgcolor='#ffccff']")
    

    province_table_content = List.last(province_table)
    province_table_tbody = elem(province_table_content, 2)
    table = List.last(province_table_tbody)
    province_list = elem(table, 2)

    province_list = List.delete_at(province_list, 0)
    province_list = List.delete_at(province_list, -1)


    Repo.get_by(Province, name: "Jawa Barat aja")
    # Enum.at(province_table_tbody, 2)

    IEx.pry
    # Hound.end_session
  end
end