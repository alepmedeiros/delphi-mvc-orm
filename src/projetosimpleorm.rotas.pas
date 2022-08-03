unit projetosimpleorm.rotas;

interface

uses
  projetosimpleorm.view.rotas;

var
  Rotas: iRotas;

implementation

initialization
  Rotas := TRotas.New;

  Rotas.RegistraRotas;

end.
