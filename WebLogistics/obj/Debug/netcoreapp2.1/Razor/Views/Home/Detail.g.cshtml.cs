#pragma checksum "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "aa8b7dc10321f5f9206ebb134e2171f17567df49"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Detail), @"mvc.1.0.view", @"/Views/Home/Detail.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/Detail.cshtml", typeof(AspNetCore.Views_Home_Detail))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"aa8b7dc10321f5f9206ebb134e2171f17567df49", @"/Views/Home/Detail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"266dbb3c9a6638dfe3808ddd81f32fbc77cb942e", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Detail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Logistic.Data.Model.DeliveryPlace>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
  
    ViewData["Title"] = "Detail";

#line default
#line hidden
            BeginContext(85, 598, true);
            WriteLiteral(@"
<section class=""content-header"">
    <div class=""container-fluid"">
        <div class=""row mb-2"">
            <div class=""col-sm-6"">
                <h1>Project Add</h1>
            </div>
            <div class=""col-sm-6"">
                <ol class=""breadcrumb float-sm-right"">
                    <li class=""breadcrumb-item""><a href=""#"">Home</a></li>
                    <li class=""breadcrumb-item active"">Project Add</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
<!-- Main content -->

<section class=""content"">
");
            EndContext();
#line 24 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
     using (Html.BeginForm("UpDateDetail", "Home"))
    {

#line default
#line hidden
            BeginContext(743, 695, true);
            WriteLiteral(@"        <div class=""row"">
            <div class=""col-md-12"">
                <div class=""card card-primary"">
                    <div class=""card-header"">
                        <h3 class=""card-title"">General</h3>
                        <div class=""card-tools"">
                            <button type=""button"" class=""btn btn-tool"" data-card-widget=""collapse"" data-toggle=""tooltip"" title=""Collapse"">
                                <i class=""fas fa-minus""></i>
                            </button>
                        </div>
                    </div>
                    <div class=""card-body"">
                        <div class=""form-group"">
                            ");
            EndContext();
            BeginContext(1439, 62, false);
#line 39 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
                       Write(Html.HiddenFor(Models => Models.ID, new { @value = Model.ID }));

#line default
#line hidden
            EndContext();
            BeginContext(1501, 75, true);
            WriteLiteral("\r\n                            <label for=\"inputName\">Project Name</label>\r\n");
            EndContext();
            BeginContext(1665, 28, true);
            WriteLiteral("                            ");
            EndContext();
            BeginContext(1694, 111, false);
#line 42 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
                       Write(Html.TextBoxFor(Models => Models.Name, new { @class = "form-control", @id = "inputName", @value = Model.Name }));

#line default
#line hidden
            EndContext();
            BeginContext(1805, 171, true);
            WriteLiteral("\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <label for=\"inputDescription\">Project Description</label>\r\n");
            EndContext();
            BeginContext(2083, 28, true);
            WriteLiteral("                            ");
            EndContext();
            BeginContext(2112, 121, false);
#line 47 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
                       Write(Html.TextAreaFor(Models => Models.Phone, new { @class = "form-control", @id = "inputDescription", @value = Model.Phone }));

#line default
#line hidden
            EndContext();
            BeginContext(2233, 187, true);
            WriteLiteral("\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <label for=\"inputDirectory\">Directory</label>\r\n                            ");
            EndContext();
            BeginContext(2421, 121, false);
#line 51 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
                       Write(Html.TextAreaFor(Models => Models.Adress, new { @class = "form-control", @id = "inputDirectory", @value = Model.Adress }));

#line default
#line hidden
            EndContext();
            BeginContext(2542, 34, true);
            WriteLiteral("\r\n                        </div>\r\n");
            EndContext();
            BeginContext(3407, 147, true);
            WriteLiteral("                    </div>\r\n                    <!-- /.card-body -->\r\n                </div>\r\n                <!-- /.card -->\r\n            </div>\r\n");
            EndContext();
            BeginContext(5215, 259, true);
            WriteLiteral(@"        </div>
        <div class=""row"">
            <div class=""col-12"">

                <input type=""submit"" value=""Submit Data"" id=""btnSubmit"" class=""btn btn-success float-right"" />

                <a href=""#"" class=""btn btn-secondary"">Cancel</a>
");
            EndContext();
            BeginContext(5580, 36, true);
            WriteLiteral("            </div>\r\n        </div>\r\n");
            EndContext();
#line 110 "D:\WebLogistics\WebLogistics\Views\Home\Detail.cshtml"
    }

#line default
#line hidden
            BeginContext(5623, 32, true);
            WriteLiteral("</section>\r\n<!-- /.content -->\r\n");
            EndContext();
            DefineSection("style", async() => {
                BeginContext(5671, 2069, true);
                WriteLiteral(@"
    <style type=""text/css"">
        /* Always set the map height explicitly to define the size of the div
        * element that contains the map. */
        #map {
            height: 100%;
        }

        /* Optional: Makes the sample page fill the window. */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #description {
            font-family: Roboto;
            font-size: 15px;
            font-weight: 300;
        }

        #infowindow-content .title {
            font-weight: bold;
        }

        #infowindow-content {
            display: none;
        }

        #map #infowindow-content {
            display: inline;
        }

        .pac-card {
            margin: 10px 10px 0 0;
            border-radius: 2px 0 0 2px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            outline: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
   ");
                WriteLiteral(@"         background-color: #fff;
            font-family: Roboto;
        }

        #pac-container {
            padding-bottom: 12px;
            margin-right: 12px;
        }

        .pac-controls {
            display: inline-block;
            padding: 5px 11px;
        }

            .pac-controls label {
                font-family: Roboto;
                font-size: 13px;
                font-weight: 300;
            }

        #pac-input {
            background-color: #fff;
            font-family: Roboto;
            font-size: 15px;
            font-weight: 300;
            margin-left: 12px;
            padding: 0 11px 0 13px;
            text-overflow: ellipsis;
            width: 400px;
        }

            #pac-input:focus {
                border-color: #4d90fe;
            }

        #title {
            color: #fff;
            background-color: #4d90fe;
            font-size: 25px;
            font-weight: 500;
            padding: 6px 12px;
    ");
                WriteLiteral("    }\r\n    </style>\r\n");
                EndContext();
            }
            );
            DefineSection("scripts", async() => {
                BeginContext(7761, 4908, true);
                WriteLiteral(@"
    <script>
        // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src=""https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"">
        function initMap() {
            const map = new google.maps.Map(document.getElementById(""map""), {
                center: { lat: -33.8688, lng: 151.2195 },
                zoom: 13,
            });
            const card = document.getElementById(""pac-card"");
            const input = document.getElementById(""pac-input"");
            map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);
            const autocomplete = new google.maps.places.Autocomplete(input);
            // Bind the map's bounds (viewport) property to the autocomplete object,
            // so that the autocomplete requests use the current map bounds for the
            // bounds option in the request.
            autocomplete.bindTo(""bounds"", map);
                WriteLiteral(@"
            // Set the data fields to return when the user selects a place.
            autocomplete.setFields([
                ""address_components"",
                ""geometry"",
                ""icon"",
                ""name"",
            ]);
            const infowindow = new google.maps.InfoWindow();
            const infowindowContent = document.getElementById(""infowindow-content"");
            infowindow.setContent(infowindowContent);
            const marker = new google.maps.Marker({
                map,
                anchorPoint: new google.maps.Point(0, -29),
            });
            autocomplete.addListener(""place_changed"", () => {
                infowindow.close();
                marker.setVisible(false);
                const place = autocomplete.getPlace();

                if (!place.geometry) {
                    // User entered the name of a Place that was not suggested and
                    // pressed the Enter key, or the Place Details request failed.
        ");
                WriteLiteral(@"            window.alert(
                        ""No details available for input: '"" + place.name + ""'""
                    );
                    return;
                }

                // If the place has a geometry, then present it on a map.
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17); // Why 17? Because it looks good.
                }
                marker.setPosition(place.geometry.location);
                marker.setVisible(true);
                let address = """";

                if (place.address_components) {
                    address = [
                        (place.address_components[0] &&
                            place.address_components[0].short_name) ||
                        """",
                        (place.address_components[1] &&
                            place.address_c");
                WriteLiteral(@"omponents[1].short_name) ||
                        """",
                        (place.address_components[2] &&
                            place.address_components[2].short_name) ||
                        """",
                    ].join("" "");
                }
                infowindowContent.children[""place-icon""].src = place.icon;
                infowindowContent.children[""place-name""].textContent = place.name;
                infowindowContent.children[""place-address""].textContent = address;
                infowindow.open(map, marker);
            });

            // Sets a listener on a radio button to change the filter type on Places
            // Autocomplete.
            function setupClickListener(id, types) {
                const radioButton = document.getElementById(id);
                radioButton.addEventListener(""click"", () => {
                    autocomplete.setTypes(types);
                });
            }
            setupClickListener(""changetype-all"", []);
    ");
                WriteLiteral(@"        setupClickListener(""changetype-address"", [""address""]);
            setupClickListener(""changetype-establishment"", [""establishment""]);
            setupClickListener(""changetype-geocode"", [""geocode""]);
            document
                .getElementById(""use-strict-bounds"")
                .addEventListener(""click"", function () {
                    console.log(""Checkbox clicked! New state="" + this.checked);
                    autocomplete.setOptions({ strictBounds: this.checked });
                });
        }
    </script>
    <script src=""https://polyfill.io/v3/polyfill.min.js?features=default""></script>
    <script src=""https://maps.googleapis.com/maps/api/js?key=AIzaSyB9wTEtsTKjn1TuRFlcBaJKawLt3jTFHQ4&callback=initMap&libraries=places&v=weekly""
            defer></script>
");
                EndContext();
            }
            );
            BeginContext(12672, 1382, true);
            WriteLiteral(@"<!-- map -->
<div class=""pac-card"" id=""pac-card"">
    <div>
        <div id=""title"">Autocomplete search</div>
        <div id=""type-selector"" class=""pac-controls"">
            <input type=""radio""
                   name=""type""
                   id=""changetype-all""
                   checked=""checked"" />
            <label for=""changetype-all"">All</label>

            <input type=""radio"" name=""type"" id=""changetype-establishment"" />
            <label for=""changetype-establishment"">Establishments</label>

            <input type=""radio"" name=""type"" id=""changetype-address"" />
            <label for=""changetype-address"">Addresses</label>

            <input type=""radio"" name=""type"" id=""changetype-geocode"" />
            <label for=""changetype-geocode"">Geocodes</label>
        </div>
        <div id=""strict-bounds-selector"" class=""pac-controls"">
            <input type=""checkbox"" id=""use-strict-bounds"" value="""" />
            <label for=""use-strict-bounds"">Strict Bounds</label>
        </di");
            WriteLiteral(@"v>
    </div>
    <div id=""pac-container"">
        <input id=""pac-input"" type=""text"" placeholder=""Enter a location"" />
    </div>
</div>
<div id=""map""></div>
<div id=""infowindow-content"">
    <img src="""" width=""16"" height=""16"" id=""place-icon"" />
    <span id=""place-name"" class=""title""></span><br />
    <span id=""place-address""></span>
</div>

");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Logistic.Data.Model.DeliveryPlace> Html { get; private set; }
    }
}
#pragma warning restore 1591