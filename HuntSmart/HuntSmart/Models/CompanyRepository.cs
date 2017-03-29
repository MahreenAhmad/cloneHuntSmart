using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuntSmart.Models
{
  public class CompanyRepository : ICompanyRepository
  {
    public List<Company> search(string query)
    {
      List<Company> output;
      //query = "%" + query + "%";
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        output = db.Companies.Where(x => x.Company_Name.Contains(query)).ToList();
      }
      return output;
    }
    public List<Company> getAllCompanies()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        output = db.Companies.ToList();
      }
      return output;
    }
  }
}