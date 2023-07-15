using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
public partial class DangNhap1 : System.Web.UI.Page
{
    SQL_MNP _sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        _sql = new SQL_MNP(connectionString);
    }
    void DangNhap(string tk, string mk)
    {
        bool check = false;
        string html1 = "";
        DataTable cb = _sql.GetID();
        for (int i = 0; i < cb.Rows.Count; i++)
        {
            string taikhoan = cb.Rows[i]["TK"].ToString();
            string matkhau = cb.Rows[i]["MK"].ToString();
            taikhoan = taikhoan.Trim();
            matkhau = matkhau.Trim();
            if (tk == taikhoan && mk == matkhau)
            {
                check = true;
                break;
            }
        }
        if (check) html1 = "<meta http-equiv ='refresh' content='0;url=main.aspx'>";
        Literal3.Text = html1;
    }

    protected void Btn_dangnhap_Click(object sender, EventArgs e)
    {
        string tk = txt_TK.Text;
        string mk = txt_MK.Text;
        tk = tk.Trim();
        mk = mk.Trim();
        DangNhap(tk, mk);
    }
}