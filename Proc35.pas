// Proc35
// Описати функцію Odd(K) логічного типу, яка повертає True, якщо цілий
// параметр K є непарним, і False в іншому випадку. З її допомогою знайти
// кількість непарних чисел в наборі з 5 цілих чисел.

function Odd(K: integer): boolean;
begin
  // Перевіряємо "<> 0", а не "= 1": так функція коректна і для від'ємних K
  // (наприклад, -3 mod 2 = -1).
  Result := K mod 2 <> 0;
end;

begin
  var count := 0;
  for var i := 1 to 5 do
  begin
    Write('Число ', i, ': ');
    var k := ReadInteger;
    if Odd(k) then
      count += 1;
  end;
  Writeln('Кількість непарних чисел: ', count);
end.
