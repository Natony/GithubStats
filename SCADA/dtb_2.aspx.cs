using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

public partial class dtb_2 : System.Web.UI.Page
{
    dtb _sql;
    int _currentPage = 1;
    int _pageSize = 20;

    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        _sql = new dtb(connectionString);

            HienThiGiaTri();
    }

    void HienThiGiaTri()
    {
        string html1 =
            "<table id ='table_data_block'>" +
                "<tr>" +
                    "<th> Name </th>" +
                    "<th> Value </th>" +
                    "<th> Time </th>" +
                "</tr>";
        string html2 = "";
        DataTable cb = _sql.GetSenSor();
        for (int i = 0; i < cb.Rows.Count; i++)
        {
            string tencambien = cb.Rows[i]["Name"].ToString();
            int giatri = Convert.ToInt32(cb.Rows[i]["Value"]);
            DateTime tg = Convert.ToDateTime(cb.Rows[i]["Time"]);
            if (i % 2 != 0)
            {
                html2 += "<tr style = 'background-color: #F4A460'>" +
                    "<td>" + tencambien + "</td>" +
                    "<td>" + giatri.ToString() + "</td>" +
                    "<td>" + tg.ToString() + "</td>" +
                "</tr>";
            }
            else
            {
                html2 += "<tr style = 'background-color: #CDC9C9'>" +
                    "<td>" + tencambien + "</td>" +
                    "<td>" + giatri.ToString() + "</td>" +
                    "<td>" + tg.ToString() + "</td>" +
                "</tr>";
            }
        }
        string html3 = "</table>";
        Literal_HienThiGiaTri.Text = html1 + html2 + html3;
    }

}