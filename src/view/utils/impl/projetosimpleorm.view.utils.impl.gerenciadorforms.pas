unit projetosimpleorm.view.utils.impl.gerenciadorforms;

interface

uses
  projetosimpleorm.view.utils.interfaces,
  Vcl.Forms,
  projetosimpleorm.view.utils.impl.Forms,
  System.Generics.Collections;

type
  TGerenciadorForm = class(TInterfacedObject, iGerenciadorForm)
  private
    FForms: iForm;
    FFormIndex: TForm;
    FListForm: TObjectDictionary<String, TForm>;
    procedure LimpaListaForms;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iGerenciadorForm;
    function Add: iGerenciadorForm;
    function Get: TForm;
    function GetIndex: TForm;
    function Remove: iGerenciadorForm;
    function Form: iForm;
  end;

implementation

function TGerenciadorForm.Add: iGerenciadorForm;
var
  lForm: TForm;
begin
  LimpaListaForms;

  if not FListForm.TryGetValue(FForms.Key, lForm) then
  begin
    Application.CreateForm(FForms.ComponetClass, lForm);
    FListForm.Add(FForms.Key, lForm);
  end;
  lForm.Parent := FForms.Parent;
  lForm.Show;

  if FForms.Index then
    FFormIndex := lForm;
end;

constructor TGerenciadorForm.Create;
begin
  FForms := TForms.New;
  FListForm := TObjectDictionary<String, TForm>.Create;
end;

destructor TGerenciadorForm.Destroy;
begin
  FListForm.DisposeOf;
  inherited;
end;

function TGerenciadorForm.Form: iForm;
begin
  Result := FForms;
end;

procedure TGerenciadorForm.LimpaListaForms;
begin
  if FListForm.Count > 10 then
    FListForm.Clear;
end;

function TGerenciadorForm.Get: TForm;
begin
  FListForm.TryGetValue(FForms.Key, Result);
end;

function TGerenciadorForm.GetIndex: TForm;
begin
  Result := FFormIndex;
end;

class function TGerenciadorForm.New: iGerenciadorForm;
begin
  Result := Self.Create;
end;

function TGerenciadorForm.Remove: iGerenciadorForm;
var
  lForm: TForm;
begin
  if FListForm.TryGetValue(FForms.Key, lForm) then
  begin
    lForm.Close;
    FListForm.Remove(FForms.key);
  end;
end;

end.
