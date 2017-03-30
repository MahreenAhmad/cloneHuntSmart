using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuntSmart.Models
{
  public interface INewRepository
  {
    List<Company> getNewFour();
    List<Company> getNewForOnePage();
  }
}
