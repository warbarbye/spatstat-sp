# Porównanie bibliotek `spatstat` oraz `sp` -- dokumentacja wstępna

## Wprowadzenie

Projekt skupia się na porównaniu bibliotek dedykowanych do przetwarzania danych przestrzennych w języku programowania `R`. 

Obie bibliteki zostaną zbadane pod kątem wydajności obliczeniowej oraz wygody użycia.

W dalszej częsci dokumentu zostaną podane metryki za pomocą, których badana będzie wydajność obliczeniowa funkcji pochodzących z tych pakietów oraz pewne subiektywne miary dotyczące szeroko pojętego doświadczenia użytkownika (_user experience_).

## Omówienie 

Obie biblioteki dotyczą danych przestrzennych, ale ich zastosowanie jest nieco odmienne. Biblioteka `sp` w porównaniu do `spatstat` oferuje znacznie mniej metod i specjalizuje są na przetwarzaniu danych przestrzennych, tj. transformacji oraz wizualizacji. Z kolei pakiet `spatstat` poza dostarczaniem metod umożliwiających przetwarzanie danych pozwala na _point pattern analysis_, tj. udostępnia szereg metod, które pozwalają przeprowadzać analizy geostatystyczne (np. kriging). 
Biblioteki te różnią się również architekturą: 
* `sp` jest oparta na systemie klas `S4`, w której klasą abstrakcyjną jest klasa `Spatial` -- wszystkie pozostałe klasy stanowią pochodne tej klasy 
* `spatstat` jest oparta na systemie klas `S3` oraz proponuje następujące typy podstawowe:
	* `ppp` point pattern
	* `owin` window (spatial region)
	* `im` pixel image
	* `psp` line segment pattern
	* `tess` tessellation
	* `pp3` three-dimensional point pattern
	* `ppx` point pattern in any number of dimensions
	* `lpp` point pattern on a linear network

todo reszta

Plan eksperymentów: 
1. poprawność działania
  utworzyć kilka obiektów w obu reprezentacjach i wyświetlić
  sprawdzenie metod konwersji - utworzyć obiekt SP przekonwertować na PPP i sprawdzić czy konwersja działa poprawnie 
  sprawdzenie transformacji układów współrzędnych 
  wykonać kilka operacji typu suma, przecięcie obiektów w obu reprezentacjach i porównać wyniki 
  sprawdzić czy poprawnie działają predykaty przestrzenne (?)
2. czas wykonania 
    porównać czas wykonania operacji wyświetlania dla kilku obiektów o różnych wielkościach w obu reprezentacjach
3. łatwość użycia funkcji
    użyć funkcji z pakietu Spatstat i ich odpowiedników ze standardowej reprezentacji, zwrócić uwagę na funkcje które odpowiednika nie mają 

    

