array=Array.new
array=["989629","989641","989647","989663","989671","989687","989719","989743","989749","989753","989761","989777","989783","989797","989803","989827","989831","989837", "989839","989869","989873","989887","989909","989917","989921","989929","989939","989951","989959","989971","989977","989981","989999","990001","990013","990023","990037" ,"990043","990053","990137","990151","990163","990169","990179","990181","990211","990239","990259","990277","990281","990287","990289","990293", "990307","990313","990323","990329","990331","990349","990359","990361","990371","990377","990383","990389" ,"990397" ,"990463" ,"990469" ,"990487" ,"990497", "990503" ,"990511" ,"990523" ,"990529" ,"990547" ,"990559" ,"990589" ,"990593" ,"990599" ,"990631" ,"990637" ,"990643" ,"990673" ,"990707" ,"990719" ,"990733" ,"990761" ,"990767" ,"990797" ,"990799" ,"990809" ,"990841" ,"990851" ,"990881" ,"990887" ,"990889" ,"990893" ,"990917" ,"990923" ,"990953" ,"990961" ,"990967" ,"990973" ,"990989" ,"991009" ,"991027","991031" ,"991037" ,"991043" ,"991057" ,"991063" ,"991069" ,"991073" ,"991079" ,"991091" ,"991127" ,"991129" ,"991147" ,"991171" ,"991181" ,"991187" ,"991201" ,"991217" ,"991223" ,"991229" ,"991261" ,"991273" ,"991313" ,"991327" ,"991343" ,"991357" ,"991381" ,"991387" ,"991409" ,"991427" ,"991429" ,"991447" ,"991453" ,"991483" ,"991493" ,"991499" ,"991511" ,"991531" ,"991541" ,"991547" ,"991567" ,"991579" ,"991603" ,"991607" ,"991619" ,"991621" ,"991633" ,"991643" ,"991651" ,"991663" ,"991693" ,"991703" ,"991717" ,"991723" ,"991733" ,"991741" ,"991751" ,"991777" ,"991811" ,"991817" ,"991867","991871" ,"991873" ,"991883" ,"991889" ,"991901" ,"991909" ,"991927" ,"991931" ,"991943" ,"991951" ,"991957" ,"991961" ,"991973" ,"991979" ,"991981" ,"991987" ,"991999" ,"992011" ,"992021" ,"992023" ,"992051" ,"992087" ,"992111" ,"992113" ,"992129" ,"992141" ,"992153" ,"992179" ,"992183" ,"992219" ,"992231" ,"992249" ,"992263" ,"992267" ,"992269" ,"992281" ,"992309" ,"992317" ,"992357" ,"992359" ,"992363" ,"992371" ,"992393" ,"992417" ,"992429" ,"992437" ,"992441" ,"992449" ,"992461" ,"992513" ,"992521" ,"992539" ,"992549" ,"992561" ,"992591" ,"992603" ,"992609" ,"992623" ,"992633" ,"992659" ,"992689" ,"992701" ,"992707" ,"992723" ,"992737" ,"992777" ,"992801" ,"992809" ,"992819" ,"992843" ,"992857" ,"992861" ,"992863" ,"992867" ,"992891" ,"992903" ,"992917" ,"992923" ,"992941" ,"992947" ,"992963" ,"992983" ,"993001" ,"993011" ,"993037" ,"993049" ,"993053" ,"993079" ,"993103" ,"993107" ,"993121" ,"993137" ,"993169" ,"993197" ,"993199" ,"993203" ,"993211" ,"993217" ,"993233" ,"993241" ,"993247" ,"993253" ,"993269" ,"993283" ,"993287" ,"993319" ,"993323" ,"993341" ,"993367" ,"993397" ,"993401" ,"993407" ,"993431" ,"993437" ,"993451" ,"993467" ,"993479" ,"993481" ,"993493" ,"993527" ,"993541" ,"993557" ,"993589" ,"993611" ,"993617" ,"993647" ,"993679" ,"993683" ,"993689" ,"993703" ,"993763" ,"993779" ,"993781" ,"993793" ,"993821" ,"993823" ,"993827" ,"993841" ,"993851"]
p=array[rand(0..array.length)]
p=p.to_i
q=array[rand(0..array.length)]
q=q.to_i
if p==q
  q=array[rand(0..array.length)]
end
$N=0
$N=$N.to_i
$N=p*q
usp=(p-1)/2 
usq=(q-1)/2 
x=0 
puts "Şifrelemek istediğiniz metni girin"
$metin=gets
puts "Anahtar üretimi için (1) , Şifreleme için (2) , Deşifreleme işlemi için (3) giriniz"
i=gets
i=i.to_i
kontrol=0
kontrol=kontrol.to_i
if i==1
  while kontrol!=1
    resultp=(i**usp)%p
    resultq=(i**usq)%q
    if resultp=1 && resultq=1
      kontrol=1
    else
      x=x+1
    end
    if resultp=0 && resultq=0
      kontrol=1
    else
      x=x+1
    end
    if resultp=-1 && resultq=-1
      kontrol=1
    else
      x=x+1
    end
  end
  usj=($N-1)/2
  if resultp=-1 && resultq=-1
    resultj=((i**usj)% $N)+1
  end
  puts "Açık anahtarlar",x,$N
end
if i==2
  array=Array.new
  a=0
  u=0
  c=5
  while u<c
    array[a]=rand(1..5)
    a=a+1
    u=u+1
      end
  s=1
  y=2
  k=1
  l=1
  while !(k==0 && l==0)
    while s<$N && s<y
      if s==$N || s==y
        s=s+1
      end
      k=$N%s
      l=y%s
      s=s+1
    end
    y=y+1
  end
  chipher=Array.new
  m=0
  while m<=array.length
    chipher[m]=((y**2)*(x**array[m]))% $N
    print chipher[m]
  end
end
if i==3
o=0
kare=0
data=Array.new
  while o<=array.length
    c=q%array[o]
    while r<q
      if r*r==c
        kare=1
      end
      r=r+1
    end
    if kare==1
      data[o]=0
    else
          data[o]=1
    end
    puts data[o]
    o=o+1
  end
end

    

