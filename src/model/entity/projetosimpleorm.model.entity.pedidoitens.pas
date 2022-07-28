unit projetosimpleorm.model.entity.pedidoitens;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDOITENS')]
  TPedidoItens = class
  private
    FId: Integer;
    FIdPedido: Integer;
    FIdProduto: Integer;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FValorTotal: Double;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('ID_PEDIDO'), Fk]
    property IdPedido: Integer read FIdPedido write FIdPedido;
    [Campo('ID_PRODUTO'), Fk]
    property IdProduto: Integer read FIdProduto write FIdProduto;
    [Campo('QUANTIDADE')]
    property Quantidade: Integer read FQuantidade write FQuantidade;
    [Campo('VALORUNITARIO'), Format('#.##0,00')]
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    [Campo('VALORTOTAL'), Format('#.##0,00')]
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

implementation

end.
