require "csv"
 
  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
  memo_type = gets.chomp.to_i
 
  if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    
    file_name = gets.chomp
    
    puts "メモしたい内容を記入してください"
    puts "終了後、Ctrl + D　を押します。"
    
    memo = STDIN.read.chomp
    
    CSV.open("#{file_name}.csv","w") do |csv|
        csv<< ["#{memo}"]
    end
    
  elsif memo_type == 2
   puts "既存のファイルを入力してください"
file_name = gets.chomp.chomp
puts "追記したい内容を記入してください"
puts "終了後、Ctrl + D　を押します。"
memo = STDIN.read
CSV.open("#{file_name}.csv","a") do |csv|#aで既存のファイルを追記モードで呼び出し
csv << ["#{memo}"]
end
  else
   puts "1または2以外の文字が入力されました"
  end
#23行目以降半角スペースをメソッドと認識していまいエラーとなるので詰めて記載した。
    