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
    public partial class form1 : Form
    {
        public form1()
        {
            InitializeComponent();
            
        }

        private void _detiBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this._detiBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.kidsDataSet);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
            this._detiTableAdapter.Fill(this.kidsDataSet._deti);

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void _detiDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
