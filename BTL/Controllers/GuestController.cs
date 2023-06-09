﻿using QLTN.Models.Authentication;
using QLTN.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace QLTN.Controllers
{
    public class GuestController : Controller
    {
        private readonly ILogger<GuestController> _logger;

        QltnContext db = new QltnContext();

        public GuestController(ILogger<GuestController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            var loainha = db.LoaiNhas.ToList();
            var dtsd = db.DoiTuongSuDungs.ToList();
            var mdsd = db.MucDichSuDungs.ToList();
            ViewModelSearch viewModelSearch = new ViewModelSearch
            {
                LoaiNhaList = loainha,
                DoiTuongSuDungList = dtsd,
                MucDichSuDungList = mdsd
            };
            viewModelSearch.DiaChiNhaList = db.ThongTinNhas.Select(x => x.DiaChiNha).Distinct().ToList();

            List<ThongTinNha> nhas = db.ThongTinNhas.ToList();
            List<ChuNha> chuNhas = (from p in db.ChuNhas
                                    select p).ToList();

            ViewBag.chuNhas = chuNhas;
            ViewBag.nhas = nhas;
            return View(viewModelSearch);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}