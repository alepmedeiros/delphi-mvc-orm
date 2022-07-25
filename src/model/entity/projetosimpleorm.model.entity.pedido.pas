unit projetosimpleorm.model.entity.pedido;

interface

type
  TPedido = class
  private
    FId: Integer;
    FDataEmissao: TDateTime;
    FIDCliente: Integer;
    FValorTotal: Double;
  public
    property Id: Integer read FId write FId;
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    property IDCliente: Integer read FIDCliente write FIDCliente;
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

implementation

end.
