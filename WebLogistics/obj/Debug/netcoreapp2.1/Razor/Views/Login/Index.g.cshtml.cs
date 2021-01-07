#pragma checksum "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "04c00944dddd84b0989a9bad30d44a4420aa1e29"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Login_Index), @"mvc.1.0.view", @"/Views/Login/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Login/Index.cshtml", typeof(AspNetCore.Views_Login_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "D:\WebLogistics\WebLogistics\Views\_ViewImports.cshtml"
using WebLogistics;

#line default
#line hidden
#line 2 "D:\WebLogistics\WebLogistics\Views\_ViewImports.cshtml"
using WebLogistics.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"04c00944dddd84b0989a9bad30d44a4420aa1e29", @"/Views/Login/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"266dbb3c9a6638dfe3808ddd81f32fbc77cb942e", @"/Views/_ViewImports.cshtml")]
    public class Views_Login_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form-signin"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 2 "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml"
  
    ViewData["Title"] = "Login";

#line default
#line hidden
            DefineSection("AddToHead", async() => {
                BeginContext(62, 11, true);
                WriteLiteral("\r\n    <link");
                EndContext();
                BeginWriteAttribute("href", " href=\"", 73, "\"", 111, 1);
#line 6 "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml"
WriteAttributeValue("", 80, Url.Content("~/css/login.css"), 80, 31, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(112, 38, true);
                WriteLiteral(" rel=\"stylesheet\" type=\"text/css\" />\r\n");
                EndContext();
            }
            );
            BeginContext(153, 2111, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "2f5bb438956b412b9aab1325e5d3d9b0", async() => {
                BeginContext(159, 315, true);
                WriteLiteral(@"
    <div class=""container"">
        <div class=""row"">
            <div class=""col-sm-9 col-md-7 col-lg-5 mx-auto"">
                <div class=""card card-signin my-5"">
                    <div class=""card-body"">
                        <h5 class=""card-title text-center"">Sign In</h5>
                        ");
                EndContext();
                BeginContext(474, 1681, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3d6f7cb4275746d2ad5334880d5f49c9", async() => {
                    BeginContext(500, 954, true);
                    WriteLiteral(@"
                            <div class=""form-label-group"">
                                <input type=""email"" id=""inputEmail"" class=""form-control"" placeholder=""Email address"" required autofocus>
                                <label for=""inputEmail"">Email address</label>
                            </div>

                            <div class=""form-label-group"">
                                <input type=""password"" id=""inputPassword"" class=""form-control"" placeholder=""Password"" required>
                                <label for=""inputPassword"">Password</label>
                            </div>

                            <div class=""custom-control custom-checkbox mb-3"">
                                <input type=""checkbox"" class=""custom-control-input"" id=""customCheck1"">
                                <label class=""custom-control-label"" for=""customCheck1"">Remember password</label>
                            </div>
");
                    EndContext();
#line 30 "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml"
                             using (Html.BeginForm("Index", "Login"))
                            {

#line default
#line hidden
                    BeginContext(1556, 142, true);
                    WriteLiteral("                                <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" id=\"loginbtn\">Sign in</button>\r\n");
                    EndContext();
#line 33 "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml"
                            }

#line default
#line hidden
                    BeginContext(1729, 419, true);
                    WriteLiteral(@"                            <hr class=""my-4"">
                            <button class=""btn btn-lg btn-google btn-block text-uppercase"" type=""submit""><i class=""fab fa-google mr-2""></i> Sign in with Google</button>
                            <button class=""btn btn-lg btn-facebook btn-block text-uppercase"" type=""submit""><i class=""fab fa-facebook-f mr-2""></i> Sign in with Facebook</button>
                        ");
                    EndContext();
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(2155, 102, true);
                WriteLiteral("\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(2264, 71, true);
            WriteLiteral("\r\n<script>\r\n    $(\'#loginbtn\').click(function () {\r\n        var url = \'");
            EndContext();
            BeginContext(2336, 27, false);
#line 46 "D:\WebLogistics\WebLogistics\Views\Login\Index.cshtml"
              Write(Url.Action("Index", "Home"));

#line default
#line hidden
            EndContext();
            BeginContext(2363, 272, true);
            WriteLiteral(@"';
        $.ajax({
            type: ""POST"",
            url: url,
            data: { url },
            success: function (data) {

            },
            error: function (data) {
            },
            dataType: 'html'
        });
    })
</script>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
