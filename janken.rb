puts "じゃんけん..."

class Janken_ahoi
  
def janken
  @janken_result = ""
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player_hand = gets.to_i
  proguram_hand = rand(3)
  
  puts "ホイ"
  puts "------------------"
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "あなた:#{jankens[player_hand]}と出しました"
  puts"相手:#{jankens[proguram_hand]}を出しました"
  puts "------------------"
  
  win = (player_hand  == 0 && proguram_hand  == 1)||(player_hand == 1 && proguram_hand == 2)||(player_hand == 2 && proguram_hand == 0)
  lose = (player_hand  == 1 && proguram_hand  == 0)||(player_hand == 2 && proguram_hand == 1)||(player_hand == 0 && proguram_hand == 2)
  draw = player_hand == proguram_hand
  fin = player_hand == 3
  
  if draw
    puts "あいこで..."
    janken
    return true
  
  elsif fin
    puts "終了"
    puts "------------------"
    exit
    
  elsif win
    @janken_result = "win"
    puts "勝った!"
    puts "あっち向いて〜"
    acchimuite_hoi
    return false
      
  else 
    @janken_result = "lose"
    puts "負け"
    puts "あっち向いて〜"
    acchimuite_hoi
    return false
  end
end

def acchimuite_hoi
  puts "0(上),1(下),2(左),3(右)"
  
  player_face = gets.to_i
  proguram_face = rand(4)
  
  puts "ホイ"
  puts "------------------"
  acchimuite_hoi = ["上","下","左","右"]
  puts "あなた:#{acchimuite_hoi[player_face]}"
  puts"相手:#{acchimuite_hoi[proguram_face]}"
  puts "------------------"
  
  if @janken_result =="win" && player_face == proguram_face
    puts "あなたの勝ちです!"
    puts "------------------"
    exit
    
  elsif @janken_result =="lose" && player_face == proguram_face
    puts "あなたの負けです"
    puts "------------------"
    exit
    
  else
    puts "もう一度"
    puts "------------------"
    puts "じゃんけん"
    janken
    return true
  end
end

end

janken_ahoi = Janken_ahoi.new()
janken_ahoi.janken
janken_ahoi.acchimuite_hoi


next_game = true

while next_game do
  next_game = janken_ahoi
end

