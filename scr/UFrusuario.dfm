object Frusuario: TFrusuario
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rios'
  ClientHeight = 346
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 559
    Height = 346
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 634
    ExplicitHeight = 325
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      ExplicitWidth = 626
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 16
        Top = 9
        Width = 198
        Height = 13
        Caption = 'Informe o Nome do Cliente Para Pesquisa'
        Color = clWhite
        ParentColor = False
      end
      object TxtValorPesquisa: TcxTextEdit
        Left = 16
        Top = 32
        TabOrder = 0
        Width = 440
      end
      object BtnPesquisa: TcxButton
        Left = 462
        Top = 28
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000026744558745469746C650046696E643B426172733B526962626F6E3B
          5374616E646172643B536561726368BB659C08000002D149444154785EAD936D
          48936B18C7FF7B369FB5E3CB3C6AEACC66E66C94980AF6C1B74A462FE743E087
          2526299812C519A20B03C98A3AC9D2E8E518519F52222A2789ACF99264C58AD0
          322A848E9BBA6992D95496BACD3DDBF43EF7C62AE9ABFDE1C77D735DF7F5E7BA
          EEFB79788410FC2EF128020A4B09A230AB733FF8454CEDE54EFF7AF8EFC6CD6A
          4DFBA39A069DBDF282565F507A2AD96758A369939EB9D6ABAB6BEA75D55EE9D2
          A9EAEE487D466A4D07FC525FF46F84AAF3DA572F07C7C8F0E814B9DD6A20AA73
          5A0E40485D538F6BE0C3383159BE929B779F90AAFA760300BEEA6CDBCF2E9465
          F5F9FF5CEF21D3338BC43060240DD75BC9D1DA7B04C0969397F464F2CB376234
          5B49F3FD3EA23A7D8F9454DFC8FA3E0E43091286FD59BE4D168B2597070E9717
          939356184DA3D8B1F784D16432C3C97941C0032B12C2EB716085B01500F87E83
          2D698AE820365429A70636BB0B8B4E17161C2E78380F122591F0B8396ABA0CEF
          0A8150148C20FE0ABCCB284ECB514600E031F2F4FDF58A6CB9302E468CD4E418
          A46FDD88785FA1D78D71CB3838B71B3C1E81242A1407F2535176682FC0D9D689
          C2132E0010308C4054989F2547F7D31114553DC4DB8F56ECCE4D839B165A67A6
          C0D1B1A2C422E8FB465158A9C390D981A2821CDAA1BBC46FC0B9BCFCF03021BA
          0CA38854E4A17BC08CED294960593EC6FFD3FF151B17075FBEF38505EBF765A3
          67F013D25393E97D39F900186689B34F8E4DCC4091BB09F3AFFBB13B538A11F3
          17D817E626000C3916178C96092BF6E44961EB7F83FCCC784C4DCF8273DA2D00
          0833373D72B5B9F53912625834AA7642124CD0F2E031E667276E02B0DBAC9F2F
          B5689F214922C0BFD53990867970ABB9034EFBAC06808702B12C43A94EC93B36
          BC2DEF389165161B6365BB6A0044049E6A5D4A56E991949C8A77F2AC32929871
          F0BD44AE2807205AFD2DFC4189A66CA0C450820371040EB18198981242610371
          ACF96F64B046FD0FE22625E3DA6A63E80000000049454E44AE426082}
        TabOrder = 1
        OnClick = BtnPesquisaClick
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 59
        Width = 521
        Height = 214
        DataSource = DataSource1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'Cod.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'C.P.F'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Title.Caption = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_nascimento'
            Title.Caption = 'Dt. Nascimento'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitTop = 25
      object Label2: TLabel
        Left = 3
        Top = 13
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = cxDBSpinEdit1
      end
      object N: TLabel
        Left = 79
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = TxtNome
      end
      object lblcpfcnpj: TLabel
        Left = 168
        Top = 64
        Width = 24
        Height = 13
        Caption = 'CPF'
      end
      object lblrgie: TLabel
        Left = 352
        Top = 61
        Width = 14
        Height = 16
        Caption = 'RG'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 3
        Top = 106
        Width = 45
        Height = 13
        Caption = 'Endereco'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel
        Left = 471
        Top = 106
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = cxDBTextEdit6
      end
      object Label9: TLabel
        Left = 3
        Top = 186
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = cxDBTextEdit7
      end
      object Label10: TLabel
        Left = 138
        Top = 147
        Width = 65
        Height = 13
        Caption = 'Complemento'
        FocusControl = cxDBTextEdit8
      end
      object Label11: TLabel
        Left = 3
        Top = 147
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label3: TLabel
        Left = 279
        Top = 186
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = cxDBTextEdit7
      end
      object Label4: TLabel
        Left = 352
        Top = 186
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = cxDBTextEdit7
      end
      object Label5: TLabel
        Left = 423
        Top = 13
        Width = 73
        Height = 13
        Caption = 'Dt. Nascimento'
      end
      object Label6: TLabel
        Left = 3
        Top = 221
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label12: TLabel
        Left = 138
        Top = 221
        Width = 60
        Height = 13
        Caption = 'Tel. Contato'
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 3
        Top = 32
        DataBinding.DataField = 'codigo'
        DataBinding.DataSource = DataSource1
        Enabled = False
        TabOrder = 0
        Width = 70
      end
      object TxtNome: TcxDBTextEdit
        Left = 79
        Top = 32
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 335
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 352
        Top = 79
        DataBinding.DataField = 'rg'
        DataBinding.DataSource = DataSource1
        TabOrder = 2
        Width = 177
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 3
        Top = 121
        DataBinding.DataField = 'endereco'
        DataBinding.DataSource = DataSource1
        TabOrder = 3
        Width = 462
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 471
        Top = 121
        DataBinding.DataField = 'numero'
        DataBinding.DataSource = DataSource1
        TabOrder = 4
        Width = 58
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 3
        Top = 199
        DataBinding.DataField = 'bairro'
        DataBinding.DataSource = DataSource1
        TabOrder = 5
        Width = 270
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 138
        Top = 161
        DataBinding.DataField = 'complemento'
        DataBinding.DataSource = DataSource1
        TabOrder = 6
        Width = 391
      end
      object lcestado: TcxDBLookupComboBox
        Left = 279
        Top = 199
        DataBinding.DataField = 'codigo_uf'
        DataBinding.DataSource = DataSource1
        Properties.KeyFieldNames = 'codigo_estado'
        Properties.ListColumns = <
          item
            FieldName = 'sigla_estado'
          end>
        Properties.ListSource = DataSource2
        Properties.OnEditValueChanged = lcestadoPropertiesEditValueChanged
        TabOrder = 7
        Width = 58
      end
      object lccidade: TcxDBLookupComboBox
        Left = 352
        Top = 199
        DataBinding.DataField = 'codigo_cidade'
        DataBinding.DataSource = DataSource1
        Properties.KeyFieldNames = 'codigo_cidade'
        Properties.ListColumns = <
          item
            FieldName = 'nome_cidade'
          end>
        Properties.ListSource = DataSource3
        TabOrder = 8
        Width = 177
      end
      object cxDBMaskEdit1: TcxDBMaskEdit
        Left = 3
        Top = 161
        DataBinding.DataField = 'cep'
        DataBinding.DataSource = DataSource1
        Properties.EditMask = '99999-999'
        TabOrder = 9
        Width = 129
      end
      object BtnIncluir: TcxButton
        Left = 3
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Incluir'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004164643B506C75733B426172733B526962
          626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
          63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
          E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
          CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
          A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
          C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
          3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
          B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
          E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
          AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
          D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
          B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
          44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
          5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
          F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
          81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
          EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
          8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
          5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
          17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
          CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
          56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
          16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
          1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
          EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
          DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
          D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
          EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
          426082}
        TabOrder = 10
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TcxButton
        Left = 84
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Alterar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000014744558745469746C6500456469744E616D653B456469
          743B045B4813000002FB49444154785E7D917D4C536714C62F621C1F2DBA7FF6
          C75063D4385D16E23A1288B6A5B43680B6855A09191F26836DD59234108A8015
          C18298AEB4221F7E15053F2BD1C488B80121A16548618CC42028A960C19AA68D
          8496B6690B6D39BE6F05138CE9499EE4DCF3DEE7F7DC735F62AD0281C07D9FCF
          A7C5F2FBFD5A00E0ACACACF4AFCDD0793DF14501C0E766CFF2F2B25620547B0E
          1E55C0B5DB7D066452E2198DAF806C518B0DF54ACA2129F14915EB0128317B78
          ECCD1855A00046960AB24F34DB9696969E7A3C1E5DD2B1BF20BFB8D5E670389E
          79BDDE2E3C475F53BD0E80E90DAD3DC6048E0C0A2437EDF40C99CFED76EBB018
          990A389C23F764099B9C69792A9FA8FCC6070CC6A1188029643CF8AD586DC32F
          5E69EF9E3EC0AD8627FFE8C751EA002DA316282C09D45DEC98159F699BA7F1AA
          50AF312E2E2E36A0EC709C1E6F7A6F1D4ACE94E35D5DF2A6C77374BE0C2A6ADA
          4C0B0B0B03B4F42AC82AB86047868119A3494FE54941559AEDEDAFA2C023F1BE
          3A02ED55DAD5FBDFCB78B60428CC22A0A69F05A6A01678B93297C56219640A6A
          20E7A4D28E6113AF0CC3957F0AC0D8C987C0CA0CBCD67080407B3E3875AEDD42
          61896168E4C5FF56ABF5DFFCA2167B424A098C4F4C8DD0516212BF12CED7DF7D
          D75C91EB9E79CC0B9A7D6F0BE1F9E9BD40B85CAE0787F8E51E2CA7D3897F9CAA
          F1DAA3694AB208D4B73AA7280C111CCD95DA6B44197EC3C32341B367F277D049
          76834E41057C851A64ECC0C23D1217ADA5C5302CB3D93C38DA21354DDD4B0D9A
          1DA379D02FDE017D358920FE89D4806FE1AB42158614D129FD5939D9C60A9AE7
          B599D027DA067F4B7F01E10F518DE89C140A109EC365D18714ECA0D9DCC5855E
          612C3C298983825D11CDC84C46DA100A1011C72CB9F4F47A1DB84D7AE8F92316
          1E16EE85E3DBBF6941C6186C9ED5B0895000F27E76D9F4B8BE1BEEC8CBA096B1
          137EFD7ED36534DF8CCD06359D30A8692101315B625940FE2E712E72CB8F57B7
          C6909878676CE690C208AC23D14448C0C6D5B46F91A2579FC3D2A20822359220
          529030E4238DD84FA5DA3B29800000000049454E44AE426082}
        TabOrder = 11
        OnClick = BtnAlterarClick
      end
      object BtnExcluir: TcxButton
        Left = 165
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Excluir'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
        TabOrder = 12
        OnClick = BtnExcluirClick
      end
      object BtnGravar: TcxButton
        Left = 263
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Gravar'
        Enabled = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
        TabOrder = 13
        OnClick = BtnGravarClick
      end
      object BtnCancelar: TcxButton
        Left = 344
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000025744558745469746C6500436C6561723B45726173653B52656D6F76
          653B426172733B526962626F6E3B878083730000027C49444154785EA5916D48
          535118C76F3ADDCC46567E308922CB4C9170A691961A4C918DA052D05E2C5748
          362DCD8C9A9A56BE52A894647EC9966D830A254CD7B4146A443170E6CB6C335F
          6A628911A4CE5B98B57FE75EBCB2B420E8811FCFE11C7EFF07CE43FD632D2138
          137804A74582FEF81EEA7DD949EA5D493A355C92460D15CBA9C1223935507882
          935D8C0A59656FDE3163B33C7E171364CA394AF52A64145B6DC9520AC04238D9
          D5909D74DB6E1B0008E6E2745A9324896642D977A6AA0B2AFE26F35F64242A7F
          4E5840EB6A09B7609FEC474F69269D1FEC17CB84B301D99A377F9205EDA97177
          7E7C36817E54836902DD5483D9D10EBC4D96E28178EBD7AC8075522E60A1ECA6
          93EDAE9B1D7B0D5B4315A61BAE13AAF07DF825068E4830785802F3C158DC08F6
          9D6003B254264779E9C3FD317767460CB0DD2B2754B07DC6F20CFD89D1E84F10
          13A2A19784E1928FB79E0D38A5ECE2647759659BAAC73A8E29551926D5656CFF
          D6D58ABEBD917344411F138ACBEBBD7AB6B8F37DB84D3A31F2A12B3AF5F3111A
          F9CDE368B9AFC5A4B210B4A111DD645AB7349CF470B44705E1C21ACF5E7F81AB
          2FB3096EF2B284E226CDD3A12956E6B07676A3531C022381E94FC20271DECBC3
          E4C7E76D725CA3605F417D6D93F9CB6FB2DAF80991795A942665A3234A849650
          7F9CF514F66D74E1F97132B9A79812C615B5DA721B3FCECBB5AFC61091FB98A0
          65C98B97E3F40AF7BE0D3CE7CDCCEE39990B1044A45C531C28D7DBCFD55B7153
          3F8A1D395AEC9C23EC4C0344C9D596D5C255018E3207F7814251C2C5B4C80CF5
          87F0740DB6CB55D8965A879014E56C60E255DDF2B541F39333DD5C28471CB7E0
          465849F0227833CC9D3D1C3F6C1100FE8B5F5E8AB24DCA40F5DB000000004945
          4E44AE426082}
        TabOrder = 14
        OnClick = BtnCancelarClick
      end
      object cbPessoa: TcxDBRadioGroup
        Left = 0
        Top = 53
        Caption = 'Sexo'
        DataBinding.DataField = 'sexo'
        DataBinding.DataSource = DataSource1
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Masculino'
            Value = 'M'
          end
          item
            Caption = 'Feminino'
            Value = 'F'
          end>
        Style.Color = clBtnFace
        TabOrder = 15
        Height = 47
        Width = 150
      end
      object cxDBMaskEdit2: TcxDBMaskEdit
        Left = 420
        Top = 32
        DataBinding.DataField = 'dt_nascimento'
        DataBinding.DataSource = DataSource1
        Properties.EditMask = '!99/99/0000;1;_'
        TabOrder = 16
        Width = 109
      end
      object cxDBMaskEdit3: TcxDBMaskEdit
        Left = 168
        Top = 79
        DataBinding.DataField = 'cpf'
        DataBinding.DataSource = DataSource1
        Properties.EditMask = '999.999.999-99'
        TabOrder = 17
        Width = 170
      end
      object cxDBMaskEdit4: TcxDBMaskEdit
        Left = 3
        Top = 235
        DataBinding.DataField = 'telefone'
        DataBinding.DataSource = DataSource1
        Properties.EditMask = '(99)99999-9999'
        TabOrder = 18
        Width = 129
      end
      object cxDBMaskEdit5: TcxDBMaskEdit
        Left = 138
        Top = 235
        DataBinding.DataField = 'telefone_contato'
        DataBinding.DataSource = DataSource1
        Properties.EditMask = '!\(999\)000-0000;1;_'
        TabOrder = 19
        Width = 129
      end
    end
  end
  object QueCidades: TZQuery
    Connection = ulogin.conexao
    Active = True
    SQL.Strings = (
      'select * from cidades where 1 = -1')
    Params = <>
    Left = 180
    Top = 32
  end
  object QueEstados: TZQuery
    Connection = ulogin.conexao
    Active = True
    SQL.Strings = (
      
        'Select distinct codigo_estado,sigla_estado from cidades order by' +
        ' sigla_estado')
    Params = <>
    Left = 228
    Top = 32
  end
  object QueTabela: TZQuery
    Connection = ulogin.conexao
    Active = True
    SQL.Strings = (
      'Select * from tab_usuarios where 0=1')
    Params = <>
    Left = 276
    Top = 32
    object QueTabelacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueTabelanome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QueTabelacpf: TWideStringField
      FieldName = 'cpf'
    end
    object QueTabelarg: TWideStringField
      FieldName = 'rg'
      Size = 18
    end
    object QueTabelaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object QueTabelanumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QueTabelabairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object QueTabelacomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 40
    end
    object QueTabelacep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object QueTabelacodigo_cidade: TIntegerField
      FieldName = 'codigo_cidade'
    end
    object QueTabelanome_cidade: TWideStringField
      FieldName = 'nome_cidade'
      Size = 100
    end
    object QueTabelacodigo_uf: TIntegerField
      FieldName = 'codigo_uf'
    end
    object QueTabelanome_uf: TWideStringField
      FieldName = 'nome_uf'
      Size = 2
    end
    object QueTabelasexo: TWideStringField
      FieldName = 'sexo'
      Size = 1
    end
    object QueTabelatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 10
    end
    object QueTabelatelefone_contato: TWideStringField
      FieldName = 'telefone_contato'
      Size = 10
    end
    object QueTabeladt_nascimento: TDateField
      FieldName = 'dt_nascimento'
      ReadOnly = True
    end
  end
  object DataSource3: TDataSource
    DataSet = QueCidades
    Left = 388
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = QueEstados
    Left = 328
    Top = 24
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = QueTabela
    Left = 360
    Top = 24
  end
end
