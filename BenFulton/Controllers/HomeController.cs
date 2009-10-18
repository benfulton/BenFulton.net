using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.HtmlControls;
using BenFulton.Models;

namespace BenFulton.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Fultons of Bloomington, Indiana";

            ViewData["Family"] = new List<FamilyMember> 
            { new FamilyMember 
            { Name = "Ben", Description = "a software developer living in Bloomington, Indiana, currently working for Envisage Technologies, a training and schedule management company." } ,
            new FamilyMember 
            { Name = "Cathy", Description = "a Nurse Practitioner. She stayed at home with our son until he turned four, and she now works at the Indiana University Health Center." } ,
            new FamilyMember 
            { Name = "Jesse", Description = "a second-grader at Marlin Elementary.  He primarily enjoys playing with his toy cars and trucks, but loves to swim and do just about anything outside.  He prefers playing with grownups instead of other kids, though; maybe it's because he's an only child. He takes music lessons and karate classes." },
            };

            ViewData["Blogroll"] = new List<HtmlAnchor>
            {
                new HtmlAnchor{ HRef="http://monroecountymartialarts.com", Title="Monroe County Martial Arts" },
                new HtmlAnchor{ HRef="http://librarything.com", Title="Library Thing" },
                new HtmlAnchor{ HRef="http://workoutdump.com", Title="Workout Dump" },
                new HtmlAnchor{ HRef="http://poptropica.com", Title="Poptropica" },
                new HtmlAnchor{ HRef="http://bloomingpedia.org", Title="Bloomingpedia" },
            }.OrderBy(anchor => anchor.Title).ToList();
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Album()
        {
            ViewData["Photos"] = new List<Photo>()
            {
                new Photo{ FileName="At the Falls", Size=new System.Drawing.Size( 295, 236), Description="At the falls" },
                new Photo{ FileName="Snowman2", Size=new System.Drawing.Size( 208, 260), Description="Building the snowman" },
                new Photo{ FileName="titanic puzzle", Size=new System.Drawing.Size( 211, 262), Description="Finishing the Titanic puzzle" },
            };

            return View();
        }

        public ActionResult Genealogy()
        {
            return View();
        }
    }

    public class FamilyMember
    {
        public string Name;
        public string Description;
    }

}
