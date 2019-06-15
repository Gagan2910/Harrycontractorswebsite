using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
namespace Harrycontractorswebsite
{
    class dataaccesslayer
    {
        SqlConnection connection = null;
        string connectionString = null;
        int user = 0;
        int user1 = 0;
        Guid salt= System.Guid.NewGuid();
        public dataaccesslayer()
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbharrycontractors"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();
        }
        public int AddCustomers(string firstname,string lastname, string emailID, string password, string phonenum,string mobilenum, string streetno,string suburb,string country)
        { 
                string hashedpassword = dataaccesslayer.GenerateSHA512(password + salt.ToString());
                string query = "insert into tblregistercustomer values('" + firstname + "','" + lastname + "','" + emailID + "','" + hashedpassword + "','" + phonenum + "','" + mobilenum + "','" + streetno + "','" + suburb + "','" + country + "','" + salt + "')";
                SqlCommand cmd = new SqlCommand(query, connection);
                return cmd.ExecuteNonQuery();
        }
        public int customerlogin(string emailid, string userpassword)
        {
            string query = "select Password,salt from tblregistercustomer where Emailaddress='" + emailid + "'";
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string dbpassword = Convert.ToString(dr["Password"]);
                string dbsalt = Convert.ToString(dr["salt"]);
                string hashedpassword = Convert.ToString(dataaccesslayer.GenerateSHA512(userpassword + dbsalt));
                if (hashedpassword.Trim() == dbpassword.Trim())
                {
                    user1 = user1 + 1;
                }
            }
            return user1;
        }
        public int stafflogin(string useremailid,string password1)
        {
            string query="select password,salt from tblstafflogin where emailid='"+useremailid+"'";
             SqlCommand cmd = new SqlCommand(query, connection);
             SqlDataReader dr = cmd.ExecuteReader();
             while(dr.Read())
             {
                 string dbpassword = Convert.ToString(dr["password"]);
                string dbsalt = Convert.ToString(dr["salt"]);
                string hashedpassword = Convert.ToString(dataaccesslayer.GenerateSHA512(password1+dbsalt));
                if (hashedpassword.Trim() == dbpassword.Trim())
                {
                    user = user + 1;
                }
                
            }
             return user;
        }
        public int updatepassword(string useremailid,string userpassword)
        {
            string selectquery= "select salt from  tblregistercustomer where Emailaddress='" + useremailid + "'";
            SqlCommand cmd = new SqlCommand(selectquery, connection);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string dbsalt = Convert.ToString(dr["salt"]);
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbharrycontractors"].ConnectionString);
                con1.Open();
                string hashedpassword = dataaccesslayer.GenerateSHA512(userpassword + dbsalt.ToString());
                string updatequery = "update tblregistercustomer set Password='" + hashedpassword + "' where Emailaddress='" + useremailid + "' ";
                SqlCommand updatecmd = new SqlCommand(updatequery, con1);
                user1 = 1;
                updatecmd.ExecuteNonQuery();
               
            }
            
            return user1;
           // ConnectionClose();
        }
      
        public void ConnectionClose()
        {
            connection.Close();
        }
        //Hash password using SHA512
        public static string GenerateSHA512(string inputstring)
        {
            HashAlgorithm algoSHA512 = SHA512.Create();
            byte[] bytepassword = ASCIIEncoding.ASCII.GetBytes(inputstring);
            byte[] hashcodeSHA512 = algoSHA512.ComputeHash(bytepassword);
            var sb = new StringBuilder();
            for (var i = 0; i < hashcodeSHA512.Length; i++)
            {
                sb.Append(hashcodeSHA512[i].ToString());
            }
            return sb.ToString();
        }


    }
}
