using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Xml.Linq;
using static iTextSharp.text.pdf.PdfDocument;

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



        public static DataTable LogIn(string email, string password)
        {
            openConn();
            SqlCommand loginComm = new SqlCommand("SELECT * FROM Booking WHERE PassengerEmail = @Email AND PassengerPassword = @Password", connection);
            loginComm.Parameters.AddWithValue("@Email", email);
            loginComm.Parameters.AddWithValue("@Password", password);
            SqlDataReader reader = loginComm.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            closeConn();
            return table;
        }

        public static void MakeReservation(string seat, string bookingID, HttpRequest request, string from, string to, string date, string price)
        {
            openConn();

            SqlCommand makeReservationComm = new SqlCommand("INSERT INTO Booking (BookingID, PassengerID, AirplaneCapacity, PassenderSeatNum, PassengerName, PassengerSurname, PassengerGender, PassengerEmail, PassengerPassword, PassengerPhone, DeparturePoint, Destination, Date, Price) VALUES (@BookingID, @PassengerID, @AirplaneCapacity, @PassenderSeatNum, @PassengerName, @PassengerSurname, @PassengerGender, @PassengerEmail, @PassengerPassword, @PassengerPhone, @DeparturePoint, @Destination, @Date, @Price)", connection);

            makeReservationComm.Parameters.AddWithValue("@BookingID", bookingID);
            makeReservationComm.Parameters.AddWithValue("@PassengerID", request.Cookies["UserInfo"]["PassengerID"]);
            makeReservationComm.Parameters.AddWithValue("@AirplaneCapacity", "54");
            makeReservationComm.Parameters.AddWithValue("@PassenderSeatNum", seat);
            makeReservationComm.Parameters.AddWithValue("@PassengerName", request.Cookies["UserInfo"]["PassengerName"]);
            makeReservationComm.Parameters.AddWithValue("@PassengerSurname", request.Cookies["UserInfo"]["PassengerSurname"]);
            makeReservationComm.Parameters.AddWithValue("@PassengerGender", request.Cookies["UserInfo"]["PassengerGender"]);
            makeReservationComm.Parameters.AddWithValue("@PassengerEmail", request.Cookies["UserInfo"]["PassengerEmail"]);
            makeReservationComm.Parameters.AddWithValue("@PassengerPassword", request.Cookies["UserInfo"]["PassengerPassword"]);
            makeReservationComm.Parameters.AddWithValue("@PassengerPhone", request.Cookies["UserInfo"]["PassengerPhone"]);
            makeReservationComm.Parameters.AddWithValue("@DeparturePoint", from);
            makeReservationComm.Parameters.AddWithValue("@Destination", to);
            makeReservationComm.Parameters.AddWithValue("@Date", date);
            makeReservationComm.Parameters.AddWithValue("@Price", price);

            makeReservationComm.ExecuteNonQuery();

            closeConn();
        }


        public static DataTable GetBookingInformation()
        {
            openConn();
            SqlCommand comm = new SqlCommand("SELECT BookingID, PassengerID, PassenderSeatNum, AirplaneCapacity, PassengerName, PassengerSurname, PassengerPhone, DeparturePoint, Destination, Date, Price FROM Booking WHERE BookingID IS NOT NULL", connection);
            SqlDataReader reader = comm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            closeConn();

            return dt;
        }

        public static DataTable GetUserInformation()
        {
            openConn();
            SqlCommand comm = new SqlCommand("SELECT PassengerID, PassengerName, PassengerSurname, PassengerPhone FROM Booking WHERE BookingID IS NULL", connection);
            SqlDataReader reader = comm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            closeConn();

            return dt;
        }

        public static DataTable MyTicketInformation(string email)
        {

            openConn();                                      
            SqlCommand myTicketComm = new SqlCommand("SELECT BookingID, PassengerID,PassenderSeatNum, PassengerName, PassengerSurname, PassengerPhone, DeparturePoint, Destination, Date, Price FROM Booking WHERE (BookingID IS NOT NULL) AND (PassengerEmail = @Email)", connection);
            myTicketComm.Parameters.AddWithValue("@Email", email);
            SqlDataReader reader = myTicketComm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            closeConn();

            return dt;
        }
        public static List<string> IsSeatAvailable(string DeparturePoint, string Destination, string Date)
        {
            List<string> fullSeats = new List<string>();
            openConn();
            SqlCommand isSeatAvailableComm = new SqlCommand("SELECT PassenderSeatNum FROM Booking WHERE DeparturePoint = @DeparturePoint AND Destination = @Destination AND Date = @Date", connection);
            isSeatAvailableComm.Parameters.AddWithValue("@DeparturePoint", DeparturePoint);
            isSeatAvailableComm.Parameters.AddWithValue("@Destination", Destination);
            isSeatAvailableComm.Parameters.AddWithValue("@Date", Date);
            SqlDataReader reader = isSeatAvailableComm.ExecuteReader();
            while (reader.Read())
            {
                string seatNumber = reader["PassenderSeatNum"].ToString();
                fullSeats.Add(seatNumber);
            }
            closeConn();

            return fullSeats;
        }
    }
}