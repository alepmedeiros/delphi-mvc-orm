unit projetosimpleorm.model.entity.pessoa;

interface

uses
  SimpleAttributes;

type
  [Tabela('PESSOA')]
  TPessoa = class
  private
    FId: Integer;
    FNome: String;
    FDataNascReg: TDate;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('NOME')]
    property Nome: String read FNome write FNome;
    [Campo('DATANASCREG')]
    property DataNascReg: TDate read FDataNascReg write FDataNascReg;
  end;

implementation

end.
