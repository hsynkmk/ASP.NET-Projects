using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Hangman
{
    public class SQLClass
    {
        public static SqlConnection connection = new SqlConnection("workstation id=hangmanDB.mssql.somee.com;packet size=4096;user id=hsynkmk_SQLLogin_1;pwd=rgjw8rwz4b;data source=hangmanDB.mssql.somee.com;persist security info=False;initial catalog=hangmanDB");
        public static void openConn()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
                connection.Open();
        }
        public static void closeConn()
        {
            if (connection.State == System.Data.ConnectionState.Open)
                connection.Close();
        }

        public static void AddWord(string name, string hint)
        {
            SqlCommand addWordComm = new SqlCommand("INSERT INTO Words (Name, Hint) values (@name, @hint)", connection);
            addWordComm.Parameters.AddWithValue("@name", name);
            addWordComm.Parameters.AddWithValue("@hint", hint);
            addWordComm.ExecuteNonQuery();
        }

        public static string GetWord()
        {
            SqlCommand getWordComm = new SqlCommand("SELECT TOP 1 Name FROM Words ORDER BY NEWID()", connection);
            SqlDataReader reader = getWordComm.ExecuteReader();
            reader.Read();
            string word = reader.GetString(0);
            reader.Close();
            return word;
        }
        public static string GetHint(string word)
        {
            SqlCommand getHintComm = new SqlCommand("SELECT Hint FROM Words WHERE Name = @word", connection);
            getHintComm.Parameters.AddWithValue("@word", word);
            SqlDataReader reader = getHintComm.ExecuteReader();
            reader.Read();
            string hint = reader.GetString(0);
            reader.Close();
            return hint;
        }
    }
}