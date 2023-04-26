using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping_Website
{
    public class Product
    {


        public int ProductID;
        public string ProductName;
        public double ProductPrice;
        public string ProductImage;
        public string ProductDecription;
        public string ProductBrand;
        public int ProductQuantity;
        public string ProductCategoryName;

        //Constructor
        public Product(int ProductID, string ProductName, double ProductPrice,
        string ProductImage, string ProductDecription, string ProductBrand,
        int ProductQuantity, string ProductCategoryName
        )
        {
            this.ProductID = ProductID;
            this.ProductName = ProductName;
            this.ProductPrice = ProductPrice;
            this.ProductImage = ProductImage;
            this.ProductDecription = ProductDecription;
            this.ProductBrand = ProductBrand;
            this.ProductQuantity = ProductQuantity;
            this.ProductCategoryName = ProductCategoryName;
        }
    }
}