using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for dtb2
/// </summary>
public class dtb2
{
    public string connectionString;
    public dtb2(string connectionString)
    {
        this.connectionString = connectionString;
    }
    public DataTable GetSenSor()
    {
        string strSQL = "SELECT * FROM SQL_MNP2";
        return GetData2(strSQL, connectionString);
    }
    public System.Data.DataTable GetData2(string selectCommand, string connectionString)
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