using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for SQL_MNP
/// </summary>
public class SQL_MNP
{
    public string connectionString;
    public SQL_MNP(string connectionString)
    {
        this.connectionString = connectionString;
    }
    /// <summary>
    /// Get Data from SQL_MNP DataBase
    /// </summary>
    /// <returns></returns>
    public DataTable GetSenSor(string name = null, string startValue = null, string endValue = null, string startTime = null, string endTime = null)
    {
        string whereClause = "";
        string strSQL_base = "SELECT * FROM SQL_MNP ";
        if (!string.IsNullOrEmpty(name))
        {
            whereClause += "Name = N'" + name + "' ";
        }

        if (!string.IsNullOrEmpty(startValue))
        {
            if (!string.IsNullOrEmpty(whereClause))
            {
                whereClause += "AND ";
            }
            whereClause += "Value >= CONVERT(int, N'" + startValue + "', 120) ";
        }

        if (!string.IsNullOrEmpty(endValue))
        {
            if (!string.IsNullOrEmpty(whereClause))
            {
                whereClause += "AND ";
            }
            whereClause += "Value <= CONVERT(int, N'" + endValue + "', 120) ";
        }

        if (!string.IsNullOrEmpty(startTime))
        {
            if (!string.IsNullOrEmpty(whereClause))
            {
                whereClause += "AND ";
            }
            whereClause += "Time >= CONVERT(datetime, N'" + startTime + "', 103) ";
        }

        if (!string.IsNullOrEmpty(endTime))
        {
            if (!string.IsNullOrEmpty(whereClause))
            {
                whereClause += "AND ";
            }
            whereClause += "Time <= CONVERT(datetime, N'" + endTime + "', 103) ";
        }
        string strSQL = strSQL_base;
        if(!string.IsNullOrEmpty(whereClause))
        {
            strSQL += "WHERE " + whereClause;
        }

        return GetData(strSQL, connectionString);
    }
    public DataTable GetID()
    {
        string strSQL = "SELECT * from DangNhap ";
        return GetData(strSQL, connectionString);
    }

    /// <summary>Get Data from SQL</summary>
    /// <param name="selectCommand">The SQL command.</param>
    /// <param name="connectionString">The string is used to coneect the database.</param>
    /// <returns></returns>
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