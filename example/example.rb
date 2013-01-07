#!mruby

puts Iconv.conv("utf-8", "cp932", "\x82\xb1\x82\xf1\x82\xc9\x82\xbf\x82\xed\x90\xa2\x8a\x45")

i = Iconv.open("ISO-2022-JP", "EUC-JP")
puts i.iconv("\264\301")     #=> "\e$B4A"
puts i.iconv("\273\372")     #=> ";z"
i.close                 #=> "\e(B"

Iconv.open("CP932", "EUC-JP") do |cd|
  puts cd.iconv("\264\301")     #=> "\e$B4A"
  puts cd.iconv("\273\372")     #=> ";z"
end
