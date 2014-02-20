i=3
l=2
z=2
m=2
sayi=0
puts "Kontrol etmek istediğiniz sayiyi giriniz"
sayi=gets.strip
sayi=sayi.to_f
karekok=Math.sqrt(sayi)
while i<karekok
  asilkok=Math.sqrt(i)
  while l<asilkok
    if i%l==0
      deger=1
      break
    else
      deger=0
    end
    if deger==0
      number[z]=l
      l=l+1
      z=z+1
    end
   end
end
while m<z
  if sayi%number[m]==0
    kontrol=1
    break
  else
    kontrol=0
    m=m+1
  end
  if kontrol==0
    puts "Girdiğiniz sayi asaldir"
  else
    puts "Girdiğiniz sayi asal değildir"
  end
end
