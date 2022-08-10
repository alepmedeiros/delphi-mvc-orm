unit projetosimpleorm.model.service.impl.servicesimpleorm;

interface

uses
  SimpleInterface,
  SimpleDAO,
  SimpleQueryFiredac,
  System.Generics.Collections,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  projetosimpleorm.model.sevice.interfaces,
  projetosimpleorm.model.resource.impl.factory,
  projetosimpleorm.model.resource.interfaces, Data.DB;

type
  TServiceSimpleORM<T: Class, constructor> = class(TInterfacedObject,
    iService<T>)
  private
    FParent: T;
    FConexao: iConexao;
    FConn: iSimpleQuery;
    FDAO: iSimpleDAO<T>;
    FDataSource: TDataSource;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T): iService<T>;
    function ListarTodos: iService<T>;
    function LitarPorId(aId: Integer): iService<T>;
    function ListarPor(Field: String; Value: Variant): iService<T>;
    function Inserir: iService<T>;
    function Atualizar: iService<T>;
    function Excluir: iService<T>; overload;
    function Excluir(Field, Value: String): iService<T>; overload;
    function DataSource(var aDataSource: TDataSource): iService<T>;
    function This: T;
  end;

implementation

function TServiceSimpleORM<T>.Atualizar: iService<T>;
begin
  Result := Self;
  FDAO.Update(FParent);
end;

constructor TServiceSimpleORM<T>.Create(Parent: T);
begin
  FParent := Parent;
  FDataSource := TDataSource.Create(nil);
  FConexao := TResource.New.Conexao;
  FConn := TSimpleQueryFiredac.New(TFDConnection(FConexao.Connect));
  FDAO := TSimpleDAO<T>.New(FConn).DataSource(FDataSource);
end;

function TServiceSimpleORM<T>.DataSource(var aDataSource: TDataSource)
  : iService<T>;
begin
  Result := Self;
  aDataSource := FDataSource;
end;

destructor TServiceSimpleORM<T>.Destroy;
begin
  FDataSource.DisposeOf;
  inherited;
end;

function TServiceSimpleORM<T>.Excluir(Field, Value: String): iService<T>;
begin
  Result := Self;
  FDAO.Delete(Field, Value);
end;

function TServiceSimpleORM<T>.Excluir: iService<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

function TServiceSimpleORM<T>.Inserir: iService<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TServiceSimpleORM<T>.ListarPor(Field: String; Value: Variant)
  : iService<T>;
begin
  Result := Self;
  FDAO.Find(Field, Value);
end;

function TServiceSimpleORM<T>.ListarTodos: iService<T>;
begin
  Result := Self;
  FDAO.Find(False);
end;

function TServiceSimpleORM<T>.LitarPorId(aId: Integer): iService<T>;
begin
  Result := Self;
  FParent := FDAO.Find(aId);
end;

class function TServiceSimpleORM<T>.New(Parent: T): iService<T>;
begin
  Result := Self.Create(Parent);
end;

function TServiceSimpleORM<T>.This: T;
begin
  Result := FParent;
end;

end.
