defmodule ID3PArser do
  def parse(file_name) do
    case File.read(file_name) do
      {:ok, mp3} -> mp3_byte_size = byte_size(mp3) - 128

        << _ :: binary_size(mp3_byte_size), id3_tag :: binary >> = mp3

        << "TAG", title  :: binary-size(30),
                  artist :: binary-size(30),
                  album  :: binary-size(30),
                  year   :: binary-size(30),
                  _rest  :: binary >>        = id3_tag

        IO.puts "#{artist} - #{title} #{album}, #{year}"

      _ ->
        IO.puts "Couldnt open #{file_name}"
    end
  end
end
