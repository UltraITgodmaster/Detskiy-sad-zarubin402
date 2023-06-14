using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Detskiy_sad_zarubin402
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
            
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "admin")
            {

                if (textBox2.Text == "admin")
                {

                    form1 f1 = new form1();

                    f1.ShowDialog();
                    Application.Run(new form1());
                    this.Close();
                }

            }

            else

                Console.WriteLine("Неправильный логин или пароль");

        }
    }
}
