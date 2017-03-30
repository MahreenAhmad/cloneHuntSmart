using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace HuntSmart.Models
{
  public class TopRepository : ITopRepository
  {
    public List<Company> getTopFour()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.TopCompanies.Where(x => x.Ranking <= 4);
        output = res.Join(db.Companies, t => t.TopCompany_CompanyId, c => c.Company_Id, (t, c) => c).ToList();
      }
      return output;
    }
    public List<Company> getTopForOnePage()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.TopCompanies.Where(x => x.Ranking <= 16);
        output = res.Join(db.Companies, t => t.TopCompany_CompanyId, c => c.Company_Id, (t, c) => c).ToList();
      }
      return output;
    }
  }
}