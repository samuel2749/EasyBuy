﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EasyBuy.Models
{
    public class ResponseModels
    {
        public int result;
        public string msg;
        public ResponseModels()
        {
            result = 0;
            msg = "";
        }
    }
}