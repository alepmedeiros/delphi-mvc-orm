unit projetosimpleorm.model.resource.impl.configuracao;

interface

uses
  System.SysUtils,
  LocalCache4D,
  projetosimpleorm.model.resource.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
    private

    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConfiguracao;
      function DriverID(Value: String): iConfiguracao; overload;
      function DriverID: String; overload;
      function Database(Value: String): iConfiguracao; overload;
      function Database: String; overload;
      function UserName(Value: String): iConfiguracao; overload;
      function UserName: String; overload;
      function Password(Value: String): iConfiguracao; overload;
      function Password: String; overload;
      function Port(Value: String): iConfiguracao; overload;
      function Port: String; overload;
      function Server(Value: String): iConfiguracao; overload;
      function Server: String; overload;
      function Schema(Value: String): iConfiguracao; overload;
      function Schema: String; overload;
      function Locking(Value: String): iConfiguracao; overload;
      function Locking: String; overload;
  end;

implementation

constructor TConfiguracao.Create;
begin
  if not FileExists('simpleorm.lc4') then
    LocalCache.SaveToStorage('simpleorm.lc4');

  LocalCache.LoadDatabase('simpleorm.lc4');
  LocalCache.Instance('Configuracao');
end;

function TConfiguracao.Database: String;
begin
  Result := LocalCache.GetItem('Database');
end;

function TConfiguracao.Database(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Database', Value);
end;

destructor TConfiguracao.Destroy;
begin
  LocalCache.SaveToStorage('simpleorm.lc4');
  inherited;
end;

function TConfiguracao.DriverID: String;
begin
  Result := LocalCache.GetItem('DriverID');
end;

function TConfiguracao.DriverID(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DriverID', Value);
end;

function TConfiguracao.Locking: String;
begin
  Result := LocalCache.GetItem('Locking');
end;

function TConfiguracao.Locking(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Locking', Value);
end;

class function TConfiguracao.New : iConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.Password: String;
begin
  Result := LocalCache.GetItem('Password');
end;

function TConfiguracao.Password(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Password', Value);
end;

function TConfiguracao.Port(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Port', Value);
end;

function TConfiguracao.Port: String;
begin
  Result := LocalCache.GetItem('Port');
end;

function TConfiguracao.Schema: String;
begin
  Result := LocalCache.GetItem('Schema');
end;

function TConfiguracao.Schema(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Schema', Value);
end;

function TConfiguracao.Server(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Server', Value);
end;

function TConfiguracao.Server: String;
begin
  Result := LocalCache.GetItem('Server');
end;

function TConfiguracao.UserName(Value: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('UserName', Value);
end;

function TConfiguracao.UserName: String;
begin
  Result := LocalCache.GetItem('UserName');
end;

end.
