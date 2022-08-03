unit projetosimpleorm.model.service.impl.simpleorm;

interface

uses
  System.SysUtils,
  Data.DB,
  SimpleInterface,
  SimpleDAO,
  SimpleAttributes,
  SimpleQueryFiredac,
  System.Generics.Collections,
  projetosimpleorm.model.service,
  projetosimpleorm.model.resource,
  Vcl.Graphics,
  projetosimpleorm.model.resource.impl.factory,
  FireDAC.Comp.Client;

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
    function ListarTodos: iService<T>; overload;
    function ListarTodos(Value: TObjectList<T>): iService<T>; overload;
    function ListarPorId(aId: Integer): iService<T>;
    function LostarPor(Field: String; Value: Variant): iService<T>;
    function Inserir: iService<T>;
    function Atualizar: iService<T>;
//    function Salvar: iService<T>;
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

function TServiceSimpleORM<T>.Excluir: iService<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

function TServiceSimpleORM<T>.Excluir(Field, Value: String): iService<T>;
begin
  Result := Self;
  FDAO.Delete(Field, Value);
end;

function TServiceSimpleORM<T>.Inserir: iService<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TServiceSimpleORM<T>.ListarPorId(aId: Integer): iService<T>;
begin
  Result := Self;
  FDAO.Find(aId);
end;

function TServiceSimpleORM<T>.ListarTodos: iService<T>;
begin
  Result := Self;
  FDAO.Find(False);
end;

function TServiceSimpleORM<T>.ListarTodos(Value: TObjectList<T>): iService<T>;
begin
  Result := Self;
  FDAO.Find(Value);
end;

function TServiceSimpleORM<T>.LostarPor(Field: String; Value: Variant)
  : iService<T>;
begin
  Result := Self;
  FDAO.Find(Field,Value);
end;

class function TServiceSimpleORM<T>.New(Parent: T): iService<T>;
begin
  Result := Self.Create(Parent);
end;

//function TServiceSimpleORM<T>.Salvar: iService<T>;
//begin
//  Result := Self;
//  if not FParent. then
//end;

function TServiceSimpleORM<T>.This: T;
begin
  Result := FParent;
end;

end.
