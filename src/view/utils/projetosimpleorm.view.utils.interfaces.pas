unit projetosimpleorm.view.utils.interfaces;

interface

uses
  System.Classes,
  Vcl.Forms,
  Vcl.ExtCtrls;

type
  iForm = interface;

  iGerenciadorForm = interface
    function Add: iGerenciadorForm;
    function Get: TForm;
    function GetIndex: TForm;
    function Remove: iGerenciadorForm;
    function Form: iForm;
  end;

  iForm = interface
    function Key(Value: String): iForm; overload;
    function Key: String; overload;
    function ComponentClass(Value: TComponentClass): iForm; overload;
    function ComponetClass: TComponentClass; overload;
    function Parent(Value: TPanel): iForm; overload;
    function Parent: TPanel; overload;
    function Index(Value: Boolean): iForm; overload;
    function Index: Boolean; overload;
  end;

implementation

end.
