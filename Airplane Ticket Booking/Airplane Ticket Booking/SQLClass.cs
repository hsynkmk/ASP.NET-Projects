using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Xml.Linq;

namespace Airplane_Ticket_Booking
{

    public class SQLClass
    {
        public static SqlConnection connection = new SqlConnection("workstation id=AirplaneDB.mssql.somee.com;packet size=4096;user id=hsynkmk_SQLLogin_1;pwd=rgjw8rwz4b;data source=AirplaneDB.mssql.somee.com;persist security info=False;initial catalog=AirplaneDB");
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

        public static void SignUp(string ID, string Name, string Surname, string Gender, string Email, string Password, string Phone)
        {
            openConn();
            SqlCommand signInComm = new SqlCommand("INSERT INTO Booking (PassengerID, PassengerName, PassengerSurname, PassengerGender," + " PassengerEmail, PassengerPassword, PassengerPhone) values (@ID, @Name, @Surname, @Gender, @Email, @Password, @Phone)", connection);
            signInComm.Parameters.AddWithValue("@ID", ID);
            signInComm.Parameters.AddWithValue("@Name", Name);
            signInComm.Parameters.AddWithValue("@Surname", Surname);
            signInComm.Parameters.AddWithValue("@Gender", Gender);
            signInComm.Parameters.AddWithValue("@Email", Email);
            signInComm.Parameters.AddWithValue("@Password", Password);
            signInComm.Parameters.AddWithValue("@Phone", Phone);
            signInComm.ExecuteNonQuery();
            closeConn();
        }

  

        public static string LogIn(string email, string password)
        {
            openConn();
            SqlCommand loginComm = new SqlCommand("SELECT * FROM Booking WHERE PassengerEmail = @Email AND PassengerPassword = @Password", connection);
            loginComm.Parameters.AddWithValue("@Email", email);
            loginComm.Parameters.AddWithValue("@Password", password);
            SqlDataReader reader = loginComm.ExecuteReader();
            string name = null;
            if (reader.Read())
            {
                name = reader.GetString(0);
            }
            closeConn();
            return name;
        }

        public static void MakeReservation(string seat)
        {
            openConn();



            closeConn();
        }
    }
}