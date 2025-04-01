namespace GUI_Website
{
    partial class QuanLy_NhanVien
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.col_Manv = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_Gender = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_SDT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_NgayVaoLam = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_Luong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_MKNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_Status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_VaiTro = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_NameOfAccount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Silver;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(485, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(460, 42);
            this.label1.TabIndex = 1;
            this.label1.Text = "DANH SÁCH NHÂN VIÊN";
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.col_Manv,
            this.col_Name,
            this.col_Gender,
            this.col_SDT,
            this.col_NgayVaoLam,
            this.col_Luong,
            this.col_MKNhanVien,
            this.col_Status,
            this.col_VaiTro,
            this.col_NameOfAccount});
            this.dataGridView1.Location = new System.Drawing.Point(12, 146);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(980, 574);
            this.dataGridView1.TabIndex = 2;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // col_Manv
            // 
            this.col_Manv.FillWeight = 55.77759F;
            this.col_Manv.HeaderText = "MANV";
            this.col_Manv.MinimumWidth = 6;
            this.col_Manv.Name = "col_Manv";
            this.col_Manv.ReadOnly = true;
            // 
            // col_Name
            // 
            this.col_Name.FillWeight = 198.0031F;
            this.col_Name.HeaderText = "Họ và Tên";
            this.col_Name.MinimumWidth = 6;
            this.col_Name.Name = "col_Name";
            this.col_Name.ReadOnly = true;
            // 
            // col_Gender
            // 
            this.col_Gender.FillWeight = 55.19751F;
            this.col_Gender.HeaderText = "Giới Tính";
            this.col_Gender.MinimumWidth = 6;
            this.col_Gender.Name = "col_Gender";
            this.col_Gender.ReadOnly = true;
            // 
            // col_SDT
            // 
            this.col_SDT.FillWeight = 114.8619F;
            this.col_SDT.HeaderText = "SĐT";
            this.col_SDT.MinimumWidth = 6;
            this.col_SDT.Name = "col_SDT";
            this.col_SDT.ReadOnly = true;
            // 
            // col_NgayVaoLam
            // 
            this.col_NgayVaoLam.FillWeight = 122.3242F;
            this.col_NgayVaoLam.HeaderText = "Ngày vào làm ";
            this.col_NgayVaoLam.MinimumWidth = 6;
            this.col_NgayVaoLam.Name = "col_NgayVaoLam";
            this.col_NgayVaoLam.ReadOnly = true;
            // 
            // col_Luong
            // 
            this.col_Luong.FillWeight = 84.70537F;
            this.col_Luong.HeaderText = "Lương";
            this.col_Luong.MinimumWidth = 6;
            this.col_Luong.Name = "col_Luong";
            this.col_Luong.ReadOnly = true;
            // 
            // col_MKNhanVien
            // 
            this.col_MKNhanVien.FillWeight = 88.23925F;
            this.col_MKNhanVien.HeaderText = "Mật khẩu NV";
            this.col_MKNhanVien.MinimumWidth = 6;
            this.col_MKNhanVien.Name = "col_MKNhanVien";
            this.col_MKNhanVien.ReadOnly = true;
            // 
            // col_Status
            // 
            this.col_Status.FillWeight = 92.19637F;
            this.col_Status.HeaderText = "Trạng Thái ";
            this.col_Status.MinimumWidth = 6;
            this.col_Status.Name = "col_Status";
            this.col_Status.ReadOnly = true;
            // 
            // col_VaiTro
            // 
            this.col_VaiTro.FillWeight = 80.21391F;
            this.col_VaiTro.HeaderText = "Vai Trò";
            this.col_VaiTro.MinimumWidth = 6;
            this.col_VaiTro.Name = "col_VaiTro";
            this.col_VaiTro.ReadOnly = true;
            // 
            // col_NameOfAccount
            // 
            this.col_NameOfAccount.FillWeight = 108.4807F;
            this.col_NameOfAccount.HeaderText = "Tên Tài Khoản";
            this.col_NameOfAccount.MinimumWidth = 6;
            this.col_NameOfAccount.Name = "col_NameOfAccount";
            this.col_NameOfAccount.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.BackColor = System.Drawing.Color.Gainsboro;
            this.groupBox1.Controls.Add(this.textBox6);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.comboBox2);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.textBox5);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.textBox4);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.textBox3);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.textBox2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.groupBox1.Location = new System.Drawing.Point(998, 146);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(355, 574);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin nhân viên";
            // 
            // textBox6
            // 
            this.textBox6.Location = new System.Drawing.Point(135, 522);
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(202, 30);
            this.textBox6.TabIndex = 20;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label11.Location = new System.Drawing.Point(22, 480);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(87, 19);
            this.label11.TabIndex = 19;
            this.label11.Text = "Tài khoản:";
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(135, 425);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(202, 31);
            this.comboBox2.TabIndex = 18;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label10.Location = new System.Drawing.Point(22, 431);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(65, 19);
            this.label10.TabIndex = 17;
            this.label10.Text = "Vai trò:";
            this.label10.Click += new System.EventHandler(this.label10_Click);
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(137, 374);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(202, 31);
            this.comboBox1.TabIndex = 16;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label9.Location = new System.Drawing.Point(15, 380);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(91, 19);
            this.label9.TabIndex = 15;
            this.label9.Text = "Trạng thái:";
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(135, 474);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(202, 30);
            this.textBox5.TabIndex = 14;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label8.Location = new System.Drawing.Point(22, 528);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(84, 19);
            this.label8.TabIndex = 13;
            this.label8.Text = "Mật khẩu:";
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(137, 321);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(200, 30);
            this.textBox4.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label7.Location = new System.Drawing.Point(18, 332);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(63, 19);
            this.label7.TabIndex = 11;
            this.label7.Text = "Lương:";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(137, 264);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 30);
            this.dateTimePicker1.TabIndex = 10;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.Location = new System.Drawing.Point(18, 273);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(113, 19);
            this.label6.TabIndex = 9;
            this.label6.Text = "Ngày vào làm:";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(135, 210);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(202, 30);
            this.textBox3.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(18, 216);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(45, 19);
            this.label5.TabIndex = 7;
            this.label5.Text = "SĐT:";
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(234, 162);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(57, 27);
            this.radioButton2.TabIndex = 6;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Nữ";
            this.radioButton2.UseVisualStyleBackColor = true;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(135, 157);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(70, 27);
            this.radioButton1.TabIndex = 5;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Nam";
            this.radioButton1.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.Location = new System.Drawing.Point(18, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(88, 19);
            this.label4.TabIndex = 4;
            this.label4.Text = "Giới Tính:";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(135, 99);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(202, 30);
            this.textBox2.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.Location = new System.Drawing.Point(18, 110);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 19);
            this.label3.TabIndex = 2;
            this.label3.Text = "Họ và Tên:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(135, 47);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(202, 30);
            this.textBox1.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(18, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 19);
            this.label2.TabIndex = 0;
            this.label2.Text = "MSSV:";
            // 
            // QuanLy_NhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.BackgroundImage = global::GUI_Website.Properties.Resources.freepik__adjust__35127;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(1380, 749);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.DoubleBuffered = true;
            this.Name = "QuanLy_NhanVien";
            this.Text = "QuanLy_NhanVien";
            this.Load += new System.EventHandler(this.QuanLy_NhanVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_Manv;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_Name;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_Gender;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_SDT;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_NgayVaoLam;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_Luong;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_MKNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_Status;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_VaiTro;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_NameOfAccount;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox comboBox2;
    }
}