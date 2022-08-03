unit projetosimpleorm.view.rotas;

interface

uses
  Router4D,
  projetosimpleorm.view.pages.pedidovenda,
  projetosimpleorm.view.pages.cliente, projetosimpleorm.view.pages.produto;

type
  iRotas = interface
    function RegistraRotas: iRotas;
  end;

  TRotas = class(TInterfacedObject, iRotas)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iRotas;
    function RegistraRotas: iRotas;
  end;

implementation

constructor TRotas.Create;
begin

end;

destructor TRotas.Destroy;
begin

  inherited;
end;

class function TRotas.New: iRotas;
begin
  Result := Self.Create;
end;

function TRotas.RegistraRotas: iRotas;
begin
  TRouter4D.Switch.Router('PedidoVenda', TPagePedidoVenda);
  TRouter4D.Switch.Router('Cliente', TPageCliente);
  TRouter4D.Switch.Router('Produto', TPageProduto);
end;

end.
