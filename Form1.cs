namespace Yazilim_Yapimi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Load += Form1_Load_1;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //ayarlar
            Settings AyarForm = new Settings();
            AyarForm.ShowDialog();
            TemaY�neticisi.TemaUygula(this); // Kullan�c� d�nd���nde temay� uygula
            this.Invalidate();
            this.Refresh();

        }

        private void button6_Click(object sender, EventArgs e)
        {
            Kelimelerim kelimelerimForm = new Kelimelerim();
            kelimelerimForm.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            bulmaca bulmacaForm = new bulmaca();
            bulmacaForm.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Wordle WordleForm = new Wordle();
            WordleForm.ShowDialog();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            //Sa� panel
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            //Sol panel
        }

        private void label2_Click(object sender, EventArgs e)
        {
            // sa� panel label� tarih i�in 
        }

        private void label3_Click(object sender, EventArgs e)
        {
            //Kelime Label�
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
            // Bug�n�n tarihini g�ster
            label2.Text = DateTime.Now.ToString("dd MMMM yyyy dddd");

            // �rnek kelime listesi
            string[] kelimeler = { "Plane=U�ak", "View=Manzara", "�nspire=�lham", "Future=Gelecek", "Gorgeous=G�zel" };
            int index = DateTime.Now.Day % kelimeler.Length;
            label3.Text = "Bug�n�n Kelimesi ==> " + kelimeler[index];

            // G�nl�k al�nt�lar
            string[] alintilar = {
        "Azim, ba�ar�n�n anahtar�d�r.",
        "Bir kelime bir d�nyad�r.",
        "Bug�n bir ad�m daha ileri!",
        "D���nmek kelimeyle ba�lar.",
        "Tekrar, ��renmenin anas�d�r."
    };
            label4.Text = alintilar[DateTime.Now.Day % alintilar.Length];

            // Tema uygulamas�
            TemaY�neticisi.TemaUygula(this);
        }


        private void label4_Click(object sender, EventArgs e)
        {
            //G�n�n s�z�
        }

        private void button8_Click(object sender, EventArgs e)
        {
            //Geri butonu
            // Giri� formuna d�n
            LogIn girisFormu = new LogIn(); 
            girisFormu.Show();
            this.Hide(); 
        }

        private void button7_Click_1(object sender, EventArgs e)
        {
            //��k�� yap
            //��k�� yap
            DialogResult result = MessageBox.Show("Uygulamadan ��kmak istedi�inize emin misiniz?", "��k��", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}
