using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Security.Policy;
using System.Net;
using System.ComponentModel.DataAnnotations;

namespace Job_Portal
{
    public class SQLClass
    {
        public static SqlConnection connection = new SqlConnection("workstation id=JobPortalDB.mssql.somee.com;packet size=4096;user id=hsynkmk_SQLLogin_1;pwd=rgjw8rwz4b;data source=JobPortalDB.mssql.somee.com;persist security info=False;initial catalog=JobPortalDB");
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

        public static void SignUp(string Email, string Password, string UserType, string FirstName, string LastName, string Address, string PhoneNumber, string Gender, string BirthDate, string Profession)
        {
            openConn();
            SqlCommand signInComm = new SqlCommand("INSERT INTO dbo.[User] (Email, Password, UserType, FirstName, LastName, Address, PhoneNumber, Gender, BirthDate, Profession) values (@Email, @Password, @UserType, @FirstName, @LastName, @Address, @PhoneNumber, @Gender, @BirthDate, @Profession)", connection);
            signInComm.Parameters.AddWithValue("@Email", Email);
            signInComm.Parameters.AddWithValue("@Password", Password);
            signInComm.Parameters.AddWithValue("@UserType", UserType);
            signInComm.Parameters.AddWithValue("@FirstName", FirstName);
            signInComm.Parameters.AddWithValue("@LastName", LastName);
            signInComm.Parameters.AddWithValue("@Address", Address);
            signInComm.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            signInComm.Parameters.AddWithValue("@Gender", Gender);
            signInComm.Parameters.AddWithValue("@BirthDate", BirthDate);
            signInComm.Parameters.AddWithValue("@Profession", Profession);
            signInComm.ExecuteNonQuery();
            closeConn();
        }

        public static DataTable LogIn(string email, string password)
        {
            openConn();
            SqlCommand loginComm = new SqlCommand("SELECT * FROM [User] WHERE Email = @Email AND Password = @Password", connection);
            loginComm.Parameters.AddWithValue("@Email", email);
            loginComm.Parameters.AddWithValue("@Password", password);
            SqlDataReader reader = loginComm.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            closeConn();
            return table;
        }

        public static DataTable GetJobList()
        {
            openConn();
            SqlCommand comm = new SqlCommand("SELECT * FROM Job", connection);
            SqlDataReader reader = comm.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            closeConn();
            return table;
        }

        public static void AddJob(string Company, string Location, string Job, string Salary, string Qualification, string Experiance, string Type, string Description)
        {
            openConn();
            SqlCommand signInComm = new SqlCommand("INSERT INTO dbo.[Job] (Company, Location, Job, Salary, Qualification, Experiance, Type, Description) values (@Company, @Location, @Job, @Salary, @Qualification, @Experiance, @Type, @Description)", connection);
            signInComm.Parameters.AddWithValue("@Company", Company);
            signInComm.Parameters.AddWithValue("@Location", Location);
            signInComm.Parameters.AddWithValue("@Job", Job);
            signInComm.Parameters.AddWithValue("@Salary", Salary);
            signInComm.Parameters.AddWithValue("@Qualification", Qualification);
            signInComm.Parameters.AddWithValue("@Experiance", Experiance);
            signInComm.Parameters.AddWithValue("@Type", Type);
            signInComm.Parameters.AddWithValue("@Description", Description);
            signInComm.ExecuteNonQuery();
            closeConn();
        }
        public static void DeleteJob(string company) 
        {
            openConn();
            SqlCommand comm = new SqlCommand("DELETE FROM dbo.[Job] WHERE Company = @Company", connection);
            comm.Parameters.AddWithValue("@Company", company);
            comm.ExecuteNonQuery();
            closeConn();
        }

        public static DataTable jobSearch(string jobType, string location)
        {
            openConn();
            SqlCommand comm;

            if (jobType == "Jobs")
            {
                comm = new SqlCommand("SELECT * FROM Job WHERE Location LIKE '%' + @Location + '%'", connection);
                comm.Parameters.AddWithValue("@Location", location);
            }
            else
            {
                if (string.IsNullOrEmpty(location))
                {
                    comm = new SqlCommand("SELECT * FROM Job WHERE Job LIKE '%' + @Job + '%'", connection);
                    comm.Parameters.AddWithValue("@Job", jobType);
                }
                else
                {
                    comm = new SqlCommand("SELECT * FROM Job WHERE Job LIKE '%' + @Job + '%' OR Location LIKE '%' + @Location + '%'", connection);
                    comm.Parameters.AddWithValue("@Job", jobType);
                    comm.Parameters.AddWithValue("@Location", location);
                }
            }

            SqlDataReader reader = comm.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            closeConn();
            return table;
        }

        public static DataTable jobInfo(string company)
        {
            openConn();
            SqlCommand comm = new SqlCommand("SELECT * FROM Job WHERE Company = @Company", connection);
            comm.Parameters.AddWithValue("@Company", company);
            SqlDataReader reader = comm.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            closeConn();
            return table;
        }
    }
}
