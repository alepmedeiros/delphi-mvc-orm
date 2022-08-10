unit projetosimpleorm.model.sevice.interfaces;

interface

uses
  Data.DB, System.Classes;

type
  iService<T: Class> = interface
    function ListarTodos: iService<T>;
    function LitarPorId(aId: Integer): iService<T>;
    function ListarPor(Field: String; Value: Variant): iService<T>;
    function Inserir: iService<T>;
    function Atualizar: iService<T>;
    function Excluir: iService<T>; overload;
    function Excluir(Field, Value: String): iService<T>; overload;
    function DataSource(aDataSource: TDataSource): iService<T>;
    function This: T;
  end;

implementation

end.
