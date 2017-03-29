using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HuntSmart.Models;
namespace HuntSmart.Controllers
{
  public class HomeController : Controller
  {
    ITopRepository tcRepository;
    IPopularRepository poRepository;
    INewRepository neRepository;
    ICompanyRepository compRepository;

    public HomeController(ITopRepository t, ICompanyRepository c,IPopularRepository p, INewRepository n)
    {
      tcRepository = t;
      compRepository = c;
      poRepository = p;
      neRepository = n;

    }
    // GET: Home
    public ActionResult Index()
    {
      var topFour = tcRepository.getTopFour();
      var newFour = neRepository.getNewFour();
      var popularFour = poRepository.getPopularFour();
      return View(new Tuple<List<Company>,List<Company>,List<Company>>(popularFour, topFour,newFour));
    }

    public ActionResult Index_l()
    {
      return View();
    }
    
    public ActionResult companylist_l()
    {
      return View();
    }

    public ActionResult companylist()
    {
      return View();
    }

    [HttpPost]
    public ActionResult companylist(string query)
    {
      if (query != null && query != "")
      {
        List<Company> res = compRepository.search(query);
        return View(res);
      }
      else
        return View();
    }

    public ActionResult email()
    {
      return View();
    }

    public ActionResult example()
    {
      return View();
    }

    public ActionResult experience()
    {
      return View();
    }

    public ActionResult newCompanies()
    {
      return View(neRepository.getNewForOnePage());
    }

    public ActionResult newCompanies_l()
    {
      return View();
    }

    public ActionResult password()
    {
      return View();
    }

    public ActionResult popularCompanies()
    {
      return View(poRepository.getPopularForOnePage());
    }

    public ActionResult popularCompanies_l()
    {
      return View();
    }

    public ActionResult privacy()
    {
      return View();
    }

    public ActionResult profile_company()
    {
      return View();
    }

    public ActionResult profile_company_l()
    {
      return View();
    }

    public ActionResult register()
    {
      return View();
    }

    public ActionResult topCompanies()
    {
      return View(tcRepository.getTopForOnePage());
    }

    public ActionResult topCompanies_l()
    {
      return View();
    }

    public ActionResult userProfile()
    {
      return View();
    }

    public ActionResult userDashboard()
    {
      return View();
    }
  }
}