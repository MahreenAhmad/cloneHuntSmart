using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuntSmart.Models
{
  public interface ITopRepository
  {
    List<Company> getTopFour();
    List<Company> getTopForOnePage();

  }
}