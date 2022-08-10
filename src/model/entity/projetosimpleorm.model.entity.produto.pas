unit projetosimpleorm.model.entity.produto;

interface

uses
  System.SysUtils,
  System.Classes,
  SimpleAttributes;

type
  [Tabela('PRODUTO')]
  TProduto = class
  private
    FId: Integer;
    FDescricao: String;
    FPrecoVenda: Double;
    FFoto: TStream;
    procedure setFoto(const Value: TStream);
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('DESCRICAO')]
    property Descricao: String read FDescricao write FDescricao;
    [Campo('PRECOVENDA'), Format('#.##0,00')]
    property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
    [Campo('FOTO', 'Blob')]
    property Foto: TStream read FFoto write setFoto;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  FFoto:= TMemoryStream.Create;
end;

destructor TProduto.Destroy;
begin
  FreeAndNil(FFoto);
  inherited;
end;

procedure TProduto.setFoto(const Value: TStream);
begin
  if not Assigned(Value) then
  begin
    TMemoryStream(FFoto).Clear;
    Exit;
  end;
  Value.Position := 0;
  TMemoryStream(FFoto).LoadFromStream(Value);
end;

end.
