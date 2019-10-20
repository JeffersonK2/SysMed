unit uFrProfissional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrPadrao, Data.DB, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  System.Actions, Vcl.ActnList, cxButtons, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JPDBGrid, Vcl.Mask, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Vcl.ComCtrls, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit;

type
  TfrmProfissional = class(TfrmPadrao)
    qryConsulcodigo: TIntegerField;
    qryConsulnome: TWideStringField;
    edtPFINome: TcxDBTextEdit;
    edtPFICodigo: TcxDBSpinEdit;
    qryManutecodigo: TIntegerField;
    qryManutenome: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProfissional: TfrmProfissional;

implementation

{$R *.dfm}

procedure TfrmProfissional.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmProfissional);
end;

end.
