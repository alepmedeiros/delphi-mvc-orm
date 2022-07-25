unit projetosimpleorm.model.entity.produto;

interface

type
  TProduto = class
  private
    FId: Integer;
    FDescricao: String;
    FPrecoVenda: Double;
  public
    property Id: Integer read FId write FId;
    property Descricao: String read FDescricao write FDescricao;
    property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
  end;

implementation

end.
