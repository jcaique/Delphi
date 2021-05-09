program ExampleOfList;

uses 
System.Generics.Collections;

var
  List: TList<Integer>; //Declarando uma lista de inteiros
  FoundIndex: Integer; //Uma variável inteira

begin
  { Create a new List. }
  List := TList<Integer>.Create;
  
  { Add a few values to the list. }
  List.AddRange([5, 1, 8, 2, 9, 14, 4, 5, 1]);
  
  writeln('Index of first 1 is ' + IntToStr(List.IndexOf(1)));
  writeln('Index of last 1 is ' + IntToStr(List.LastIndexOf(1)));
  writeln('Does List contains element 100? ' + BoolToStr(List.Contains(100)));

  { Add another element to the list. }
  List.Add(100);

  writeln('There are ' + IntToStr(List.Count) + ' elements in the list.');

  { Remove the first occurrence of 1. }
  List.Remove(1);
  
  { Delete a few elements from position 0. }
  List.Delete(0);
  List.DeleteRange(0, 2);
  
  { Extract the remaining 1 from the list. }
  List.Extract(1);
  
  { Set the capacity to the actual length. }
  List.TrimExcess;
  writeln('Capacity of the list is ' + IntToStr(List.Capacity));

  { Clear the list. }
  List.Clear;
  
  { Insert some elements. }
  List.Insert(0, 2);
  List.Insert(1, 1);
  List.InsertRange(0, [6, 3, 8, 10, 11]);

  { Sort the list. }
  List.Sort;

  { Binary search for the required element. }
  if List.BinarySearch(6, FoundIndex) then
    writeln('Found element 6 at index ' + IntToStr(FoundIndex));

  { Reverse the list. }
  List.Reverse;
  writeln('The element on position 0 is ' + IntToStr(List.Items[0]));
  List.Free; //Liberando espaço na memória, alocado para a lista
  readln;

end.


//source: http://docwiki.embarcadero.com/CodeExamples/Sydney/en/Generics_Collections_TList_(Delphi)
