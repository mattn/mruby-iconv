
assert('convert cp932 to utf8') do
  Iconv.conv("utf-8", "cp932", "\x82\xb1\x82\xf1\x82\xc9\x82\xbf\x82\xed\x90\xa2\x8a\x45") == "こんにちわ世界"
end

assert('convert euc-jp to iso-2022-jp') do
  i = Iconv.open("ISO-2022-JP", "EUC-JP")
  i.iconv("\264\301") == "\e$B4A\e(B"
end

assert('convert euc-jp to cp932 with block') do
  r = false
  Iconv.open("CP932", "EUC-JP") do |cd|
    r = cd.iconv("\273\372") == "\216\232"
  end
  r
end
