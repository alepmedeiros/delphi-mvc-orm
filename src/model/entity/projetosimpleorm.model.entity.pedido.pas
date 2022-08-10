unit projetosimpleorm.model.entity.pedido;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDO')]
  TPedido = class
  private
    FId: Integer;
    FDataEmissao: TDateTime;
    FIDCliente: Integer;
    FValorTotal: Double;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('DATAEMISSAO')]
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    [Campo('ID_CLIENTE'), Fk]
    property IDCliente: Integer read FIDCliente write FIDCliente;
    [Campo('VALORTOTAL'), Format('#.##0,00')]
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

implementation

end.
