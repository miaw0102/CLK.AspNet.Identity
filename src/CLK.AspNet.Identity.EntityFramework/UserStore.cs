﻿using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLK.AspNet.Identity.EntityFramework
{
    public class UserStore<TUser, TRole> : Microsoft.AspNet.Identity.EntityFramework.UserStore<TUser, TRole, string, IdentityUserLogin, IdentityUserRole, IdentityUserClaim>
        where TUser : CLK.AspNet.Identity.EntityFramework.IdentityUser, new()
        where TRole : CLK.AspNet.Identity.EntityFramework.IdentityRole, new()
    {
        // Constructors
        public UserStore(DbContext context) : base(context) { }
    }
}
