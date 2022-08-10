unit projetosimpleorm.model.service;

interface

uses
  Data.DB,
  System.Generics.Collections;

type
  iService<T: class> = interface
    function ListarTodos: iService<T>; overload;
    function ListarPorId(aId: Integer): iService<T>;
    function ListarPor(Field: String; Value: Variant): iService<T>;
    function Inserir: iService<T>;
    function Atualizar: iService<T>;
    function Excluir: iService<T>; overload;
    function Excluir(Field, Value: String): iService<T>; overload;
    function DataSource(var aDataSource: TDataSource): iService<T>;
    function This: T;
  end;

implementation

end.
