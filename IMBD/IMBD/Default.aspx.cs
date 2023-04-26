using IMDbApiLib.Models;
using IMDbApiLib;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace IMBD
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetComedyMovies();
            }
        }

        protected async void GetComedyMovies()
        {
            try
            {
                // Instance of ApiLib
                var apiLib = new ApiLib("k_kmcp9ys2");

                // Search for comedy movies
                var input = new AdvancedSearchInput();                      // Search input
                input.Genres = AdvancedSearchGenre.Comedy;                  // Filter by genre
                input.Sort = AdvancedSearchSort.User_Rating_Descending;     // Sort by user rating
                input.NumberOfVotesFrom = 5000;                             // Filter by minimum number of votes
                input.Languages = AdvancedSearchLanguage.English;           // Filter by language

                var comedyMovies = await apiLib.AdvancedSearchAsync(input); // Retrieve results

                comedyMovies.Results.Sort((x, y) => y.IMDbRating.CompareTo(x.IMDbRating));  // Sort by IMDb rating
                
                // Bind the retrieved data to the GridView control
                GridViewMovies.DataSource = comedyMovies.Results;
                GridViewMovies.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        protected void GridViewMovies_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMovies.PageIndex = e.NewPageIndex;
            GetComedyMovies();
        }
    }
}