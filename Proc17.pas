// Proc17
// Описати процедуру TriangleALS(a, b, angle, S, P), яка обчислює площу
// S = (1/2)·a·b·sin(angle) та периметр
// P = a + b + sqrt(a² + b² - 2·a·b·cos(angle))
// трикутника за двома сторонами a, b та кутом angle між ними (в радіанах).
// За допомогою цієї процедури знайти площі та периметри трьох трикутників
// з даними сторонами та кутами.

// a, b, angle — вхідні параметри; S, P — вихідні (var-параметри)
procedure TriangleALS(a, b, angle: real; var S, P: real);
begin
  S := 0.5 * a * b * Sin(angle);
  P := a + b + Sqrt(a * a + b * b - 2 * a * b * Cos(angle));
end;

begin
  for var i := 1 to 3 do
  begin
    Writeln('Трикутник ', i, ':');
    var a := ReadReal('  сторона a = ');
    var b := ReadReal('  сторона b = ');
    var angle := ReadReal('  кут між ними (в радіанах) = ');
    var S, P: real;
    TriangleALS(a, b, angle, S, P);
    Writeln('  площа S = ', S:0:4);
    Writeln('  периметр P = ', P:0:4);
  end;
end.
