﻿@model $rootnamespace$.Models.RegisterViewModel
@{
    ViewBag.Title = "Create";
}

<h2>@ViewBag.Title.</h2>

@using (Html.BeginForm("Create", "UsersAdmin", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
{
    @Html.AntiForgeryToken()
    <h4>Create a new account.</h4>
    <hr />
    @Html.ValidationSummary("", new { @class = "text-error" })
    <div class="form-group">
        @Html.LabelFor(m => m.Email, new { @class = "col-md-2 control-label" })
        <div class="col-md-10">
            @Html.TextBoxFor(m => m.Email, new { @class = "form-control" })
        </div>
    </div>
    <div class="form-group">
        @Html.LabelFor(m => m.Password, new { @class = "col-md-2 control-label" })
        <div class="col-md-10">
            @Html.PasswordFor(m => m.Password, new { @class = "form-control" })
        </div>
    </div>
    <div class="form-group">
        @Html.LabelFor(m => m.ConfirmPassword, new { @class = "col-md-2 control-label" })
        <div class="col-md-10">
            @Html.PasswordFor(m => m.ConfirmPassword, new { @class = "form-control" })
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-2 control-label">
            Select User Role
        </label>
        <div class="col-md-10">
            @foreach (var item in (SelectList)ViewBag.RoleId)
            {
                <input type="checkbox" name="SelectedRoles" value="@item.Value" class="checkbox-inline" />
                @Html.Label(item.Value, new { @class = "control-label" })
                <br />
            }
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <input type="submit" class="btn btn-default" value="Create" />
        </div>
    </div>
}

@section Scripts {
    @Scripts.Render("~/bundles/jqueryval")
}
