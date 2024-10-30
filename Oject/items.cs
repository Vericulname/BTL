using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL.Oject
{
	public class items
	{
		public items() { }
		public items(int id,string name, string description, string type , string ImgURL, decimal price,int SL) {
			this.id = id;
			this.name = name;
			this.description = description;
			this.type = type;
			this.ImgURL = ImgURL;
			this.price = price;
			this.SL = SL;
		}
		public int id {  get; set; }
		public string name { get; set; }
		public string description { get; set; }
		public string type { get; set; }
		public string ImgURL { get; set; }
		public decimal price { get; set; }
		public int SL { get; set; }
	}
}