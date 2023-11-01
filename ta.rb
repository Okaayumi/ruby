
def rock_paper_scissors#じゃんけんメソッド
 
 puts "じゃんけん・・・"
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"
 

 @user_hand=gets.chomp.to_i
 @randam_hand=rand(3) #前から順に0,1,2,3と数字が割り振られている
 
 rock_paper_scissorses=["グー","チョキ","パー"]

 
if @user_hand==3
 puts "戦闘を終了します"
 exit
 
 elsif @user_hand == 0||1||2
 puts "ホイ！"
 puts "---------------"
 puts "あなた:#{rock_paper_scissorses[@user_hand]}を出しました"
 puts "相手:#{rock_paper_scissorses[@randam_hand]}を出しました"
 puts "---------------"
 #あいこはじゃんけん繰り返し、勝ちまたは負けはあっち向いてホイに進むようにする
 if @user_hand ==@randam_hand
  return true
 elsif (@user_hand==0&&@randam_hand==2) || (@user_hand==1&&@randam_hand==0) || (@user_hand==2&&@randam_hand==1)#プレイヤー負け
 @result_janken = "lose"
  return look_over_there
  
  
 elsif (@randam_hand==0&&@user_hand==2) ||  (@randam_hand==1&&@user_hand==0) || (@randam_hand==2&&@user_hand==1)#プレイヤー勝ち
  @result_janken = "win"
  return look_over_there
  
 end
 
else
 puts "予期せぬ入力がありました"
end
end

def look_over_there#あっち向いてホイメソッド
 puts "あっちむいて〜"
 puts "0(上)1(下)2(左)3(みぎ)"
 
 @user_face=gets.chomp.to_i
 @randam_face=rand(4)
 
 look_over_theres=["上","下","左","右"]
 
 if @user_face==0||1||2||3
  
 
 puts "ホイ！"
 puts "---------------"
 puts "あなた:#{look_over_theres[@user_face]}"
 puts "相手:#{look_over_theres[@randam_face]}"
 
  if @user_face==@randam_face
   
   if @user_face==@randam_face && @result_janken == "win"
    puts "あなたの勝ちです"
   elsif @user_face==@randam_face && @result_janken == "lose"
    puts "あなたの負けです"
   end
  else
   return true
  end
 
else
 puts "予期せぬ入力がありました"
end

end

#trueで繰り返す
next_game = true

while next_game do
 next_game = rock_paper_scissors
end




