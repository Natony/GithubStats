using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for SQL_MNP
/// </summary>on for dtb
/// </summary>
public class dtb
{
    public string connectionString;
    public dtb(string connectionString)
    {
        this.connectionString = connectionString;
    }
    public DataTable GetSenSor()
    {
        string strSQL = "SELECT * FROM SQL_MNP";
        return GetData(strSQL, connectionString);
    }
    public DataTable GetID()
    {
        string strSQL = "select * from DangNhap ";
        return GetData(strSQL, connectionString);
    }
    public System.Data.DataTable GetData(string selectCommand, string connectionString)
    {
        try
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionString);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dataAdapter);
            System.Data.DataTable table = new System.Data.DataTable();
            table.Locale = System.Globalization.CultureInfo.InvariantCulture;
            dataAdapter.Fill(table);

            return table;
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
}