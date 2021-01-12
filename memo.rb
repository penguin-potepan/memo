require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"


memo_type = gets.to_i

if memo_type == 1
    
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s
    CSV.open("#{file_name}.csv","w")do |csv|
        
        puts "メモしたい内容を入力してください"
        puts "完了したらctrl+Dを押します"
    
    memo = gets.to_s
      csv << ["#{memo}"]
    end

else
end