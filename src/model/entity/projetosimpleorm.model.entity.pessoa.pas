unit projetosimpleorm.model.entity.pessoa;

interface

type
  TPessoa = class
  private
    FId: Integer;
    FNome: String;
    FDataNascReg: TDate;
  public
    property Id: Integer read FId write FId;
    property Nome: String read FNome write FNome;
    property DataNascReg: TDate read FDataNascReg write FDataNascReg;
  end;

implementation

end.
