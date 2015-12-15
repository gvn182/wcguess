using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class REP_JOGOS
    {
        public int ID { get; set; }
        public string ID_USUARIO { get; set; }
        public int ID_JOGO { get; set; }
        public int RESULTADO_TIME_1 { get; set; }
        public string TIME_1 { get; set; }
        public int RESULTADO_TIME_2 { get; set; }
        public string TIME_2 { get; set; }
        public int TIPO_GRAVACAO { get; set; }
        public int FASE { get; set; }
        public DateTime DATA_APOSTA { get; set; }
    }
}
