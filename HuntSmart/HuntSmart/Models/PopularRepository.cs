using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuntSmart.Models
{
  public class PopularRepository : IPopularRepository
  {
    public List<Company> getPopularForOnePage()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.PopularCompanies.Take(16);
        output = res.Join(db.Companies, p => p.PopularCompany_CompanyId, c => c.Company_Id, (p, c) => c).ToList();
      }
      return output;
    }

    public List<Company> getPopularFour()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.PopularCompanies.Take(4);
        output = res.Join(db.Companies, p => p.PopularCompany_CompanyId, c => c.Company_Id, (p, c) => c).ToList();
      }
      return output;
    }
  }
}