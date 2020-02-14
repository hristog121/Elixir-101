defmodule Huffman do
"
    def sample do
      'the quick brown fox jumps over the lazy dog
      this is a sample text that we will use when we build
      up a table we will only handle lower case letters and
      no punctuation symbols the frequency will of course not
      represent english but it is probably not that far off'
    end

    def text()  do
      'this is something that we should encode'
    end

    def test do
      sample = sample()
      tree = tree(sample)
      encode = encode_table(tree)
      decode = decode_table(tree)
      text = text()
      seq = encode(text, encode)
      decode(seq, decode)
    end
    "

  def freq(sample) do
    freq(sample, [])
  end

  def freq([],freq) do
    freq
  end

  def freq([char | rest], freq) do
    freq(rest, update(char, freq))
  end

  def update(char, []), do: [{char, 1}]
  def update(char, [{char, n} | freq]) do
    [{char, n + 1} | freq]
  end
  def update(char, [elem | freq]) do
    [elem | update(char, freq)]
  end

  #Define a huffman tree
  def huffnab_tree([{tree, freq}]) do
    tree
  end
  #insert in the list - if empty
  def insert({ascii, fvalue}, []) do
    [{ascii,fvalue}]
  end


end
