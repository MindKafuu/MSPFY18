using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace TestWeb
{
    public partial class Play : System.Web.UI.Page
    {
        private Random random;
        private string path;
        private int score, count;
        private List<Tuple<string, string>> vocabs;
        private Tuple<string, string> randommedWord;

        public Play()
        {
            score = 0;
            random = new Random();
            vocabs = new List<Tuple<string, string>>();
            path = Server.MapPath("~/file/word.txt");
            StreamReader src = new StreamReader(path);

            // Add Vocabs List
            while (!src.EndOfStream)
            {
                string[] temp = src.ReadLine().Split(',');
                vocabs.Add(new Tuple<string, string>(temp[0].Trim(), temp[1].Trim()));
            }

            src.Close();
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Generate First Question
                GenerateQuestion();

                Session["time"] = DateTime.Now.AddSeconds(7);
            }
            else
            {
                randommedWord = (Tuple<string, string>)Session["item"];
                if (Session["count"] != null)
                {
                    score = (int)Session["count"];
                }
            }
        }

        private void GenerateQuestion()
        {
            Tuple<string, string> newQuestion;

            do
            {
                newQuestion = vocabs[random.Next() % vocabs.Count];
            } while (randommedWord != null && randommedWord.Item2.Equals(newQuestion.Item2));

            randommedWord = newQuestion;
            vocab.Text = randommedWord.Item2;

            if (random.Next() % 2 == 0)
            {
                Button1.Text = randommedWord.Item1;
                do
                {
                    Button2.Text = vocabs[random.Next() % vocabs.Count].Item1;
                } while (Button2.Text.Equals(Button1.Text));
            }
            else
            {
                Button2.Text = randommedWord.Item1;
                do
                {
                    Button1.Text = vocabs[random.Next() % vocabs.Count].Item1;
                } while (Button1.Text.Equals(Button2.Text));
            }
            Session["item"] = randommedWord;
            Session["count"] = score;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //GenerateQuestion();
            if (Button1.Text.Equals(randommedWord.Item1) && count <= 0)
            {
                score += 1;
                Session["count"] = score;
                Session["item"] = randommedWord;
                Session["time"] = DateTime.Now.AddSeconds(7);
                GenerateQuestion();
                //Response.RedirectPermanent("Play.aspx");
            }
            else
            {
                Session["count"] = null;
                Session["item"] = null;
                Response.RedirectPermanent("end.aspx?score=" + score.ToString());
                Response.RedirectPermanent("end.aspx");
            }

        }

        protected void Timer_Tick(object sender, EventArgs e)
        {
            TimeSpan count = new TimeSpan();
            count = (DateTime)Session["time"] - DateTime.Now;
            if (count.Seconds <= 0)
            {
                time.Text = "TimeOut!";
                Session["time"] = null;
                Response.RedirectPermanent("end.aspx?score=" + score.ToString());
            }
            else
            {
                time.Text = count.Seconds.ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //GenerateQuestion();
            if (Button2.Text.Equals(randommedWord.Item1) && count <= 0)
            {
                score += 1;
                Session["count"] = score;
                Session["item"] = randommedWord;
                Session["time"] = DateTime.Now.AddSeconds(7);
                GenerateQuestion();
                //Response.RedirectPermanent("Play.aspx");
            }
            else
            {
                Session["count"] = null;
                Session["item"] = null;
                Response.RedirectPermanent("end.aspx?score=" + score.ToString());
                Response.RedirectPermanent("end.aspx");
            }
        }
        
    }
}