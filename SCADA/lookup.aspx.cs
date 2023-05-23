using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

public partial class _lookup : System.Web.UI.Page
{
    SQL_MNP _sql;
    string Name, startValue, endValue, startTime, endTime;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        _sql = new SQL_MNP(connectionString);
        //HienThiGiaTri(Name, startValue, endValue, startTime, endTime);
    }
    public void HienThiGiaTri(string Name, string startValue, string endValue, string startTime, string endTime)
    {
        string html1 =
            "<table id ='table_data_block'>" +
                "<tr>" +
                    "<th> Name </th>" +
                    "<th> Value </th>" +
                    "<th> Time </th>" +
                "</tr>";
        string html2 = "";
        DataTable cb = _sql.GetSenSor(Name, startValue, endValue, startTime, endTime);
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
        Literal2.Text = html1 + html2 + html3;
    }
    protected void BtnXem_Click(object sender, EventArgs e)
    {
        string Name = tbxName.Text;
        string startTime = tbxStartTime.Text;
        string endTime = tbxEndTime.Text;
        string startValue = tbxStartValue.Text;
        string endValue = tbxEndValue.Text;
        HienThiGiaTri(Name, startValue, endValue, startTime, endTime);
    }
}
