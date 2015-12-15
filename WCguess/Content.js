var TeamNames = new Array('Alemanha','Argentina','Argélia','Australia','Belgica','Bosnia','Brasil','Camaroes','Chile','Colombia','Coreia do Sul','Costa do Marfim','Costa Rica','Croácia','Equador','Espanha','EUA','França','Gana','Grécia','Holanda','Honduras','Inglaterra','Irã','Italia','Japao','Mexico','Nigéria','Portugal','Russia','Suiça','Uruguay');

function LoadOitavas() {
    var MyTables = new Array("#tbGrupoA", "#tbGrupoB", "#tbGrupoC", "#tbGrupoD", "#tbGrupoE", "#tbGrupoF", "#tbGrupoG", "#tbGrupoH");
    var GrupoA = [];
    var GrupoB = [];
    var GrupoC = [];
    var GrupoD = [];
    var GrupoE = [];
    var GrupoF = [];
    var GrupoG = [];
    var GrupoH = [];


    for (var TableIndex = 0; TableIndex < MyTables.length; TableIndex++) {
        var Game = 0;
        var rows = $('tr', $(MyTables[TableIndex]));

        for (var i = 1; i < 7; i++) {

            var Time1 = rows.eq(i).find('td').eq(0).find("img").prop('src');
            var Aposta1 = rows.eq(i).find('td').eq(1).find("input").val();
            var Time2 = rows.eq(i).find('td').eq(4).find("img").prop('src');
            var Aposta2 = rows.eq(i).find('td').eq(3).find("input").val();

            if (parseInt(Aposta1) == parseInt(Aposta2)) {
                switch (TableIndex) {
                    case 0:
                        {
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time1;
                            GrupoA[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time2;
                            GrupoA[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 1:
                        {
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time1;
                            GrupoB[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time2;
                            GrupoB[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 2:
                        {
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time1;
                            GrupoC[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time2;
                            GrupoC[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 3:
                        {
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time1;
                            GrupoD[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time2;
                            GrupoD[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 4:
                        {
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time1;
                            GrupoE[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time2;
                            GrupoE[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 5:
                        {
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time1;
                            GrupoF[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time2;
                            GrupoF[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 6:
                        {
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time1;
                            GrupoG[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time2;
                            GrupoG[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 7:
                        {
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time1;
                            GrupoH[Game][1] = 50 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time2;
                            GrupoH[Game][1] = 50 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                }

            }
            else if (parseInt(Aposta1) > parseInt(Aposta2)) {
                switch (TableIndex) {
                    case 0:
                        {
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time1;
                            GrupoA[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time2;
                            GrupoA[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 1:
                        {
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time1;
                            GrupoB[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time2;
                            GrupoB[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 2:
                        {
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time1;
                            GrupoC[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time2;
                            GrupoC[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 3:
                        {
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time1;
                            GrupoD[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time2;
                            GrupoD[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 4:
                        {
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time1;
                            GrupoE[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time2;
                            GrupoE[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 5:
                        {
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time1;
                            GrupoF[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time2;
                            GrupoF[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 6:
                        {
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time1;
                            GrupoG[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time2;
                            GrupoG[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 7:
                        {
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time1;
                            GrupoH[Game][1] = 100 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time2;
                            GrupoH[Game][1] = 0 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;

                }
            }
            else if (parseInt(Aposta2) > parseInt(Aposta1)) {

                switch (TableIndex) {
                    case 0:
                        {
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time1;
                            GrupoA[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoA[Game] = []
                            GrupoA[Game][0] = Time2;
                            GrupoA[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 1:
                        {
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time1;
                            GrupoB[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoB[Game] = []
                            GrupoB[Game][0] = Time2;
                            GrupoB[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 2:
                        {
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time1;
                            GrupoC[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoC[Game] = []
                            GrupoC[Game][0] = Time2;
                            GrupoC[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 3:
                        {
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time1;
                            GrupoD[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoD[Game] = []
                            GrupoD[Game][0] = Time2;
                            GrupoD[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 4:
                        {
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time1;
                            GrupoE[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoE[Game] = []
                            GrupoE[Game][0] = Time2;
                            GrupoE[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 5:
                        {
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time1;
                            GrupoF[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoF[Game] = []
                            GrupoF[Game][0] = Time2;
                            GrupoF[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 6:
                        {
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time1;
                            GrupoG[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoG[Game] = []
                            GrupoG[Game][0] = Time2;
                            GrupoG[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                    case 7:
                        {
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time1;
                            GrupoH[Game][1] = 0 + parseInt(Aposta1) - parseInt(Aposta2);
                            Game++;
                            GrupoH[Game] = []
                            GrupoH[Game][0] = Time2;
                            GrupoH[Game][1] = 100 + parseInt(Aposta2) - parseInt(Aposta1);
                            Game++;
                        } break;
                }

            }
        }
    }
    GrupoA = GroupList(GrupoA);
    GrupoB = GroupList(GrupoB);
    GrupoC = GroupList(GrupoC);
    GrupoD = GroupList(GrupoD);
    GrupoE = GroupList(GrupoE);
    GrupoF = GroupList(GrupoF);
    GrupoG = GroupList(GrupoG);
    GrupoH = GroupList(GrupoH);


    $("#ImgJogo48Time1").attr('src', GrupoA[3][0]);
    $("#lblJogo48Time1").text(GetFileName(GrupoA[3][0]));
    $("#ImgJogo48Time2").attr('src', GrupoB[2][0]);
    $("#lblJogo48Time2").text(GetFileName(GrupoB[2][0]));


    $("#ImgJogo49Time1").attr('src', GrupoC[3][0]);
    $("#lblJogo49Time1").text(GetFileName(GrupoC[3][0]));
    $("#ImgJogo49Time2").attr('src', GrupoD[2][0]);
    $("#lblJogo49Time2").text(GetFileName(GrupoD[2][0]));

    $("#ImgJogo50Time1").attr('src', GrupoE[3][0]);
    $("#lblJogo50Time1").text(GetFileName(GrupoE[3][0]));
    $("#ImgJogo50Time2").attr('src', GrupoF[2][0]);
    $("#lblJogo50Time2").text(GetFileName(GrupoF[2][0]));

    $("#ImgJogo51Time1").attr('src', GrupoG[3][0]);
    $("#lblJogo51Time1").text(GetFileName(GrupoG[3][0]));
    $("#ImgJogo51Time2").attr('src', GrupoH[2][0]);
    $("#lblJogo51Time2").text(GetFileName(GrupoH[2][0]));

    $("#ImgJogo52Time1").attr('src', GrupoB[3][0]);
    $("#lblJogo52Time1").text(GetFileName(GrupoB[3][0]));
    $("#ImgJogo52Time2").attr('src', GrupoA[2][0]);
    $("#lblJogo52Time2").text(GetFileName(GrupoA[2][0]));

    $("#ImgJogo53Time1").attr('src', GrupoD[3][0]);
    $("#lblJogo53Time1").text(GetFileName(GrupoD[3][0]));
    $("#ImgJogo53Time2").attr('src', GrupoC[2][0]);
    $("#lblJogo53Time2").text(GetFileName(GrupoC[2][0]));

    $("#ImgJogo54Time1").attr('src', GrupoF[3][0]);
    $("#lblJogo54Time1").text(GetFileName(GrupoF[3][0]));
    $("#ImgJogo54Time2").attr('src', GrupoE[2][0]);
    $("#lblJogo54Time2").text(GetFileName(GrupoE[2][0]));

    $("#ImgJogo55Time1").attr('src', GrupoH[3][0]);
    $("#lblJogo55Time1").text(GetFileName(GrupoH[3][0]));
    $("#ImgJogo55Time2").attr('src', GrupoG[2][0]);
    $("#lblJogo55Time2").text(GetFileName(GrupoG[2][0]));


    LoadQuartas();
    LoadSemi();
    LoadTerceiro();
    LoadFinal();

    $("#HdnImgJogo48Time1").val($("#ImgJogo48Time1").attr('src'));
    $("#HdnImgJogo48Time2").val($("#ImgJogo48Time2").attr('src'));
    $("#HdnImgJogo49Time1").val($("#ImgJogo49Time1").attr('src'));
    $("#HdnImgJogo49Time2").val($("#ImgJogo49Time2").attr('src'));
    $("#HdnImgJogo50Time1").val($("#ImgJogo50Time1").attr('src'));
    $("#HdnImgJogo50Time2").val($("#ImgJogo50Time2").attr('src'));
    $("#HdnImgJogo51Time1").val($("#ImgJogo51Time1").attr('src'));
    $("#HdnImgJogo51Time2").val($("#ImgJogo51Time2").attr('src'));
    $("#HdnImgJogo52Time1").val($("#ImgJogo52Time1").attr('src'));
    $("#HdnImgJogo52Time2").val($("#ImgJogo52Time2").attr('src'));
    $("#HdnImgJogo53Time1").val($("#ImgJogo53Time1").attr('src'));
    $("#HdnImgJogo53Time2").val($("#ImgJogo53Time2").attr('src'));
    $("#HdnImgJogo54Time1").val($("#ImgJogo54Time1").attr('src'));
    $("#HdnImgJogo54Time2").val($("#ImgJogo54Time2").attr('src'));
    $("#HdnImgJogo55Time1").val($("#ImgJogo55Time1").attr('src'));
    $("#HdnImgJogo55Time2").val($("#ImgJogo55Time2").attr('src'));
    $("#HdnImgJogo56Time1").val($("#ImgJogo56Time1").attr('src'));
    $("#HdnImgJogo56Time2").val($("#ImgJogo56Time2").attr('src'));
    $("#HdnImgJogo57Time1").val($("#ImgJogo57Time1").attr('src'));
    $("#HdnImgJogo57Time2").val($("#ImgJogo57Time2").attr('src'));
    $("#HdnImgJogo58Time1").val($("#ImgJogo58Time1").attr('src'));
    $("#HdnImgJogo58Time2").val($("#ImgJogo58Time2").attr('src'));
    $("#HdnImgJogo59Time1").val($("#ImgJogo59Time1").attr('src'));
    $("#HdnImgJogo59Time2").val($("#ImgJogo59Time2").attr('src'));
    $("#HdnImgJogo60Time1").val($("#ImgJogo60Time1").attr('src'));
    $("#HdnImgJogo60Time2").val($("#ImgJogo60Time2").attr('src'));
    $("#HdnImgJogo61Time1").val($("#ImgJogo61Time1").attr('src'));
    $("#HdnImgJogo61Time2").val($("#ImgJogo61Time2").attr('src'));
    $("#HdnImgJogo62Time1").val($("#ImgJogo62Time1").attr('src'));
    $("#HdnImgJogo62Time2").val($("#ImgJogo62Time2").attr('src'));
    $("#HdnImgJogo63Time1").val($("#ImgJogo63Time1").attr('src'));
    $("#HdnImgJogo63Time2").val($("#ImgJogo63Time2").attr('src'));



}
function LoadFinal() {
    if ($("#txtJogo60Time1").val() != "" && $("#txtJogo60Time2").val() != "") {
        if (!isNaN($("#txtJogo60Time1").val()) && !isNaN($("#txtJogo60Time2").val())) {
            if (parseInt($("#txtJogo60Time1").val()) > parseInt($("#txtJogo60Time2").val())) {
                $("#ImgJogo63Time1").attr('src', $("#ImgJogo60Time1").attr('src'));
                $("#lblJogo63Time1").text(GetFileName($("#ImgJogo60Time1").attr('src')));
            }
            else {
                $("#ImgJogo63Time1").attr('src', $("#ImgJogo60Time2").attr('src'));
                $("#lblJogo63Time1").text(GetFileName($("#ImgJogo60Time2").attr('src')));
            }
        }
    }

    if ($("#txtJogo61Time1").val() != "" && $("#txtJogo61Time2").val() != "") {
        if (!isNaN($("#txtJogo61Time1").val()) && !isNaN($("#txtJogo61Time2").val())) {
            if (parseInt($("#txtJogo61Time1").val()) > parseInt($("#txtJogo61Time2").val())) {
                $("#ImgJogo63Time2").attr('src', $("#ImgJogo61Time1").attr('src'));
                $("#lblJogo63Time2").text(GetFileName($("#ImgJogo61Time1").attr('src')));
            }
            else {
                $("#ImgJogo63Time2").attr('src', $("#ImgJogo61Time2").attr('src'));
                $("#lblJogo63Time2").text(GetFileName($("#ImgJogo61Time2").attr('src')));
            }
        }
    }
}
function LoadTerceiro() {
    if ($("#txtJogo60Time1").val() != "" && $("#txtJogo60Time2").val() != "") {
        if (!isNaN($("#txtJogo60Time1").val()) && !isNaN($("#txtJogo60Time2").val())) {
            if (parseInt($("#txtJogo60Time1").val()) > parseInt($("#txtJogo60Time2").val())) {
                $("#ImgJogo62Time1").attr('src', $("#ImgJogo60Time2").attr('src'));
                $("#lblJogo62Time1").text(GetFileName($("#ImgJogo60Time2").attr('src')));
            }
            else {
                $("#ImgJogo62Time1").attr('src', $("#ImgJogo60Time1").attr('src'));
                $("#lblJogo62Time1").text(GetFileName($("#ImgJogo60Time1").attr('src')));
                
            }
        }
    }

    if ($("#txtJogo61Time1").val() != "" && $("#txtJogo61Time2").val() != "") {
        if (!isNaN($("#txtJogo61Time1").val()) && !isNaN($("#txtJogo61Time2").val())) {
            if (parseInt($("#txtJogo61Time1").val()) > parseInt($("#txtJogo61Time2").val())) {
                $("#ImgJogo62Time2").attr('src', $("#ImgJogo61Time2").attr('src'));
                $("#lblJogo62Time2").text(GetFileName($("#ImgJogo61Time2").attr('src')));
            }
            else {
                $("#ImgJogo62Time2").attr('src', $("#ImgJogo61Time1").attr('src'));
                $("#lblJogo62Time2").text(GetFileName($("#ImgJogo61Time1").attr('src')));
            }
        }
    }
}
function LoadSemi() {

    if ($("#txtJogo56Time1").val() != "" && $("#txtJogo56Time2").val() != "") {
        if (!isNaN($("#txtJogo56Time1").val()) && !isNaN($("#txtJogo56Time2").val())) {
            if (parseInt($("#txtJogo56Time1").val()) > parseInt($("#txtJogo56Time2").val())) {
                $("#ImgJogo60Time1").attr('src', $("#ImgJogo56Time1").attr('src'));
            }
            else {
                $("#ImgJogo60Time1").attr('src', $("#ImgJogo56Time2").attr('src'));
            }
        }
    }


    if ($("#txtJogo58Time1").val() != "" && $("#txtJogo58Time2").val() != "") {
        if (!isNaN($("#txtJogo58Time1").val()) && !isNaN($("#txtJogo58Time2").val())) {
            if (parseInt($("#txtJogo58Time1").val()) > parseInt($("#txtJogo58Time2").val())) {
                $("#ImgJogo60Time2").attr('src', $("#ImgJogo58Time1").attr('src'));
            }
            else {
                $("#ImgJogo60Time2").attr('src', $("#ImgJogo58Time2").attr('src'));
            }
        }
    }

    if ($("#txtJogo57Time1").val() != "" && $("#txtJogo57Time2").val() != "") {
        if (!isNaN($("#txtJogo57Time1").val()) && !isNaN($("#txtJogo57Time2").val())) {
            if (parseInt($("#txtJogo57Time1").val()) > parseInt($("#txtJogo57Time2").val())) {
                $("#ImgJogo61Time1").attr('src', $("#ImgJogo57Time1").attr('src'));
            }
            else {
                $("#ImgJogo61Time1").attr('src', $("#ImgJogo57Time2").attr('src'));
            }
        }
    }

    if ($("#txtJogo59Time1").val() != "" && $("#txtJogo59Time2").val() != "") {
        if (!isNaN($("#txtJogo59Time1").val()) && !isNaN($("#txtJogo59Time2").val())) {
            if (parseInt($("#txtJogo59Time1").val()) > parseInt($("#txtJogo59Time2").val())) {
                $("#ImgJogo61Time2").attr('src', $("#ImgJogo59Time1").attr('src'));
            }
            else {
                $("#ImgJogo61Time2").attr('src', $("#ImgJogo59Time2").attr('src'));
            }

        }
    }
}
function LoadQuartas() {

    if ($("#txtJogo48Time1").val() != "" && $("#txtJogo48Time2").val() != "") {
        if (!isNaN($("#txtJogo48Time1").val()) && !isNaN($("#txtJogo48Time2").val())) {
            if (parseInt($("#txtJogo48Time1").val()) > parseInt($("#txtJogo48Time2").val())) {
                $("#ImgJogo56Time1").attr('src', $("#ImgJogo48Time1").attr('src'));
            }
            else {
                $("#ImgJogo56Time1").attr('src', $("#ImgJogo48Time2").attr('src'));
            }
        }
    }

    if ($("#txtJogo49Time1").val() != "" && $("#txtJogo49Time2").val() != "") {
        if (!isNaN($("#txtJogo49Time1").val()) && !isNaN($("#txtJogo49Time2").val())) {
            if (parseInt($("#txtJogo49Time1").val()) > parseInt($("#txtJogo49Time2").val()))
                $("#ImgJogo56Time2").attr('src', $("#ImgJogo49Time1").attr('src'));
            else
                $("#ImgJogo56Time2").attr('src', $("#ImgJogo49Time2").attr('src'));

        }
    }

    if ($("#txtJogo50Time1").val() != "" && $("#txtJogo50Time2").val() != "") {
        if (!isNaN($("#txtJogo50Time1").val()) && !isNaN($("#txtJogo50Time2").val())) {
            if (parseInt($("#txtJogo50Time1").val()) > parseInt($("#txtJogo50Time2").val()))
                $("#ImgJogo58Time1").attr('src', $("#ImgJogo50Time1").attr('src'));
            else
                $("#ImgJogo58Time1").attr('src', $("#ImgJogo50Time2").attr('src'));
        }
    }
    if ($("#txtJogo51Time1").val() != "" && $("#txtJogo51Time2").val() != "") {
        if (!isNaN($("#txtJogo51Time1").val()) && !isNaN($("#txtJogo51Time2").val())) {
            if (parseInt($("#txtJogo51Time1").val()) > parseInt($("#txtJogo51Time2").val()))
                $("#ImgJogo58Time2").attr('src', $("#ImgJogo51Time1").attr('src'));
            else
                $("#ImgJogo58Time2").attr('src', $("#ImgJogo51Time2").attr('src'));
        }
    }
    if ($("#txtJogo52Time1").val() != "" && $("#txtJogo52Time2").val() != "") {
        if (!isNaN($("#txtJogo52Time1").val()) && !isNaN($("#txtJogo52Time2").val())) {
            if (parseInt($("#txtJogo52Time1").val()) > parseInt($("#txtJogo52Time2").val()))
                $("#ImgJogo57Time1").attr('src', $("#ImgJogo52Time1").attr('src'));
            else
                $("#ImgJogo57Time1").attr('src', $("#ImgJogo52Time2").attr('src'));
        }
    }
    if ($("#txtJogo53Time1").val() != "" && $("#txtJogo53Time2").val() != "") {
        if (!isNaN($("#txtJogo53Time1").val()) && !isNaN($("#txtJogo53Time2").val())) {
            if (parseInt($("#txtJogo53Time1").val()) > parseInt($("#txtJogo53Time2").val()))
                $("#ImgJogo57Time2").attr('src', $("#ImgJogo53Time1").attr('src'));
            else
                $("#ImgJogo57Time2").attr('src', $("#ImgJogo53Time2").attr('src'));
        }
    }
    if ($("#txtJogo54Time1").val() != "" && $("#txtJogo54Time2").val() != "") {
        if (!isNaN($("#txtJogo54Time1").val()) && !isNaN($("#txtJogo54Time2").val())) {
            if (parseInt($("#txtJogo54Time1").val()) > parseInt($("#txtJogo54Time2").val()))
                $("#ImgJogo59Time1").attr('src', $("#ImgJogo54Time1").attr('src'));
            else
                $("#ImgJogo59Time1").attr('src', $("#ImgJogo54Time2").attr('src'));
        }
    }

    if ($("#txtJogo55Time1").val() != "" && $("#txtJogo55Time2").val() != "") {
        if (!isNaN($("#txtJogo55Time1").val()) && !isNaN($("#txtJogo55Time2").val())) {
            if (parseInt($("#txtJogo55Time1").val()) > parseInt($("#txtJogo55Time2").val()))
                $("#ImgJogo59Time2").attr('src', $("#ImgJogo55Time1").attr('src'));
            else
                $("#ImgJogo59Time2").attr('src', $("#ImgJogo55Time2").attr('src'));
        }
    }
}
function GroupList(TheList) {
    var TheNewList = [];
    var TimesQuejaForam = "";
    for (var i = 0; i < TheList.length; i++) {

        if (TimesQuejaForam.indexOf("-" + TheList[i][0].toUpperCase() + "-") == -1) {
            TheNewList[i] = []
            TheNewList[i][0] = TheList[i][0];
            TheNewList[i][1] = SumPoints(TheList, TheList[i][0]);
            TimesQuejaForam += "-" + TheList[i][0].toUpperCase() + "-";
        }
    }
    TheNewList = OrderList(TheNewList);
    return TheNewList;
}


function SumPoints(TheList,Team) {
    var i = 0;
    var pontos = 0;
    for (var k = 0; k < TheList.length; k++) {
        if (TheList[k][0].toUpperCase() == Team.toUpperCase()) {
            pontos += TheList[k][1];
            i++;
        }
        

        if (i == 3)
            return pontos;
    }


}
function OrderList(List) {


    var swapped;
    do {
        swapped = false;
        for (var i = 0; i < List.length - 1; i++) {
            if (parseInt(List[i][1]) > parseInt(List[i + 1][1])) {
                var temp = List[i][0];
                var temp2 = List[i][1];
                List[i][0] = List[i + 1][0];
                List[i][1] = List[i + 1][1];
                List[i + 1][0] = temp;
                List[i + 1][1] = temp2;
                swapped = true;
            }

        }
    } while (swapped);

    return List;
}
function GetFileName(ThePath) {
    var loc = ThePath;
    var fileNameIndex = loc.lastIndexOf("/") + 1;
    var dotIndex = loc.lastIndexOf('.');
    var output = loc.substr(fileNameIndex, dotIndex < fileNameIndex ? loc.length : dotIndex);
    return decodeURIComponent(output.replace(".png", ""));
}