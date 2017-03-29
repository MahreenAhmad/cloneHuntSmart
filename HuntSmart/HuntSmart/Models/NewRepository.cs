using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuntSmart.Models
{
  public class NewRepository : INewRepository
  {
    public List<Company> getNewForOnePage()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.NewCompanies.Take(16);
        output = res.Join(db.Companies, n => n.NewCompany_CompanyId, c => c.Company_Id, (n, c) => c).ToList();
      }
      return output;
    }

    public List<Company> getNewFour()
    {
      List<Company> output;
      using (HuntSmartEntities db = new HuntSmartEntities())
      {
        var res = db.NewCompanies.Take(4);
        output = res.Join(db.Companies, n => n.NewCompany_CompanyId, c => c.Company_Id, (n, c) => c).ToList();
      }
      return output;
    }
  }
}