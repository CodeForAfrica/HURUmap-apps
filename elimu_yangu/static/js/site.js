(function ($) {
    'use strict';
    var lang;
    var subjects = {
        "Accountant" : {
            "name" : _("ACCOUNTANT"),
            "must" : [
                "BASIC MATHEMATICS",
                "ACCOUNTANCY",
                "COMMERCE",
                "BOOK-KEEPING"
            ],
            "olevel_optional" : [
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Architect" : {
            "name" : _("ARCHITECT"),
            "must" : [
                "PHYSICS",
                "MATHEMATICS"
            ],
            "olevel_optional" : [
                "ENGLISH LANGUAGE LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Auditor" : {
            "name" : _("AUDITOR"),
            "must" : [
                "BASIC MATHEMATICS",
                "ACCOUNTANCY",
                "COMMERCE",
                "BOOK-KEEPING"
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Computer Scientist/Engineer" : {
            "name" : _("COMPUTER SCIENTIST/ENGINEER"),
            "must" : [
                "PHYSICS",
                "MATHEMATICS",
            ],
            "olevel_optional" : [
                "KISWAHILI",
                "ENGLISH LANGUAGE"
            ]
        },
        "Doctor" : {
            "name" : _("MEDECINE"),
            "must" : [
                "PHYSICS",
                "CHEMISTRY",
                "BIOLOGY"
            ],
            "olevel_optional" : [
                "MATHEMATICS",
                "KISWAHILI",
                "ENGLISH LANGUAGE"
            ]
        },
        "Economist" : {
            "name" : _("ECONOMIST"),
            "must" : [
                "MATHEMATICS",
                "COMMERCE",
                "ECONOMICS"
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Engineer" : {
            "name" : _("ENGINEERING"),
            "must" : [
                "PHYSICS",
                "CHEMISTRY",
                "MATHEMATICS"
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Financial Analyst" : {
            "name" : _("FINANCIAL ANALYST"),
            "must" : [
                "BASIC MATHEMATICS",
                "ACCOUNTANCY",
                "COMMERCE",
                "BOOK-KEEPING"
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Science Teacher" : {
            "name" : _("SCIENCE TEACHER"),
            "must" : [
                "KISWAHILI",
                "PHYSICS",
                "CHEMISTRY",
                "BIOLOGY"
            ],
            "olevel_optional" : [
                "MATHEMATICS",
                "ENGLISH LANGUAGE"
            ]
        },
        "Teacher" : {
            "name" : _("TEACHER"),
            "must" : [
                "ENGLISH LANGUAGE",
                "KISWAHILI",
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "HISTORY",
                "KISWAHILI"
            ]
        },
        "Pilot" : {
            "name" : _("PILOT"),
            "must" : [
                "PHYSICS",
                "MATHEMATICS",
                "GEOGRAPHY"
            ],
            "olevel_optional" : [
                "CHEMISTRY",
                "ENGLISH LANGUAGE",
                "KISWAHILI"
            ]
        },
        "Lawyer" : {
            "name" : _("LAWYER"),
            "must" : [
                "HISTORY",
                "ENGLISH LANGUAGE LANGUAGE",
                "KISWAHILI"
            ],
            "olevel_optional" : [
                "GEOGRAPHY",
                "CIVICS"
            ]
        },
    }

    var subjectGrades = {
        "General Studies": "S"
    }

    var preferedCourses = []

    jQuery(document).ready(function () {
        /*
         * ----------------------------------------------------------------------------------------
         *  LANDING PAGE JS
         * ----------------------------------------------------------------------------------------
         */
        $("#getStarted").click(function(e) {
            $('html, body').animate({
                scrollTop: $(".help-box").offset().top
            }, 500);
        })

        $("#person, #wishlist").niceSelect();

        $("#person, #wishlist").change(function(e) {
            var values = $("#person").val() + " + " + $("#wishlist").val();
            $(".option-box.selected").removeClass("selected");

            switch(values) {
                case "journalist + data on high schools":
                    $("#schoolLeague").addClass("selected");
                break;

                case "student + best high schools to go to":
                    $("#careerGuide").addClass("selected");
                break;

                case "student + suitable university courses to attend":
                    $("#universityFinder").addClass("selected");
                break;

                default:
                break;
            }

        })

        /*
         * ----------------------------------------------------------------------------------------
         *  TESTIMONIAL JS
         * ----------------------------------------------------------------------------------------
         */

        $(".testimonial-list").owlCarousel({
            items: 1,
            autoPlay: true,
            navigation: false,
            itemsDesktop: [1199, 1],
            itemsDesktopSmall: [980, 1],
            itemsTablet: [768, 1],
            itemsTabletSmall: false,
            itemsMobile: [479, 1],
            pagination: true,
            autoHeight: true,
        });


        /*
         *-----------------------------------------------------------------------------------------
         * SCHOOL LEAGUE
         *-----------------------------------------------------------------------------------------
       */
       $('#rank-year').on('change', function() {
          var selected = $(this).find('option:selected');
          lang = selected.data('language');
          get_school_ranking( this.value );
      });

      $('#rank-year-profile').on('change', function() {
         var selected = $(this).find('option:selected');
         lang = selected.data('language');
         get_school_profile_ranking( this.value );
     });

       function get_school_ranking(year) {
         var parameter = {'year': year};
         var url = "/" + lang + "/leaguetable/";
         var best_40 = "";
         var worst_40 = "";
         var best = "";
         var worst = "";
         $.ajax({
           type: "POST",
           url: url,
           data: JSON.stringify(parameter),
           contentType: 'application/json',
           success: function(data){
              var result = data.schools;
              var result1 = append_school_table(result['best_schools_more_40'], 'best-40');
              swap_ul('#best-40', result1)
              var result2 = append_school_table(result['worst_schools_more_40'], 'worst-40');
              swap_ul('#worst-40', result2)
              var result3 = append_school_table(result['best_schools_less_40'], 'best');
              swap_ul('#best', result3)
              var result4 = append_school_table(result['worst_schools_less_40'], 'worst');
              swap_ul('#worst', result4)
            },
            error: function() {
                  alert("Opps! Something went wrong");
                  $('#rank-year').value = '2017';
           }
         });
      }

      function get_school_profile_ranking(year) {
        var parameter = {'year': year};
        var url = "/" + lang + "/leaguetable/";
        var best_40 = "";
        var worst_40 = "";
        var best = "";
        var worst = "";
        $.ajax({
          type: "POST",
          url: url,
          data: JSON.stringify(parameter),
          contentType: 'application/json',
          success: function(data){
             var result = data.schools;
             var result1 = append_school_table(result['best_schools_more_40'], 'best-40-profile');
             swap_ul('#best-40-profile', result1)
             var result2 = append_school_table(result['worst_schools_more_40'], 'worst-40-profile');
             swap_ul('#worst-40-profile', result2)
             var result3 = append_school_table(result['best_schools_less_40'], 'best-profile');
             swap_ul('#best-profile', result3)
             var result4 = append_school_table(result['worst_schools_less_40'], 'worst-profile');
             swap_ul('#worst-profile', result4)
           },
           error: function() {
                 alert("Opps! Something went wrong");
                 $('#rank-year').value = '2017';
          }
        });
     }

        function swap_ul (item, data) {
          var schoolTable = $(item);
          schoolTable.fadeOut(1000, function(){
              schoolTable.html(data).fadeIn();
          });

        }

        function editCapitalize(name) {
          var arrname = name.replace('SECONDARY SCHOOL', '').split(' ');
          var item;
          for (item=0; item < arrname.length; item++) {
            arrname[item] = arrname[item].charAt(0).toUpperCase() + arrname[item].slice(1).toLowerCase();
          }
          return arrname.join(' ')
        }

        function append_school_table(data, ul_id) {
          var result = "<ul id=" + ul_id +" class='list-group school'>";
          for (var elem in data) {
            var arr = data[elem]

            result += "<li class='list-group-item'><a href='leaguetable/schools/'"+ arr[3] +"><div class='col-xs-5'><div class='school-name'>" + editCapitalize(arr[4]) + " School</div><div class='school-type'>" + arr[9] +"</div></div><div class='col-xs-5'><div class='school-rank'>#"+ arr[15] + " in Tanzania</div><div class='school-rank'>#" + arr[16].trim() +" in "+ arr[5] + "</div></div><div class='col-xs-2'>"+ arr[12] + " GPA</div></a></li>"
          }
          return result + "</ul>";
        }
        /*
         * ----------------------------------------------------------------------------------------
         *  CAREER GUIDE PAGE JS
         * ----------------------------------------------------------------------------------------
         */

        $("#gender, #location, #level, #course").niceSelect();

        /*
         * ----------------------------------------------------------------------------------------
         *  Hide Details
         * ----------------------------------------------------------------------------------------
         */

        // $(".hide-details").click(function(e) {
        //     var vis = $(".visualisation.sub");
        //     vis.toggle();
        //     if(vis.is(":visible")) {
        //         $(this).text("Hide Details");
        //     } else {
        //         $(this).text("Show Details");
        //     }
        // })

        /*
         * ----------------------------------------------------------------------------------------
         *  UNIVERSITY FINDER
         * ----------------------------------------------------------------------------------------
         */

        /*
         * ----------------------------------------------------------------------------------------
         *  Add NEXT/PREV arrow UI
         * ----------------------------------------------------------------------------------------
         */

         $(".tab-pane").each(function(i) {
            var html = "<div class='nav-tab'>";
            var totalSize = $(".tab-pane").size() - 1;

            if (i !== totalSize) {
                html += "<span href='#' class='next-tab box'>NEXT</span>";

                if(i !== 0) {
                    html += "<span href='#' class='prev-tab box'>BACK</span>";
                }
            }

            html += "</div>";

            $(this).append(html);
        });

        /*
         * ----------------------------------------------------------------------------------------
         *  prevent click on diabled tab
         * ----------------------------------------------------------------------------------------
         */
        $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
            var $target = $(e.target);

            if ($target.parent().hasClass('disabled')) {
                return false;
            } else {
                $("li.prev").removeClass("prev");
                $(this).parents("li").prevAll().addClass('prev');

                $("#page-title").text($(this).data("title"));
            }
        });

        /*
         * ----------------------------------------------------------------------------------------
         *  change tab on next/prev arrow click
         * ----------------------------------------------------------------------------------------
         */
        $('.next-tab, .prev-tab').click(function(e) {
            var $active = $('.wizard .nav-wizard li.active');
            $active.next().removeClass('disabled');

            var activeTab = $('.tab-pane.active')
            if(activeTab.attr("id") == "step2") {
              lang = activeTab.data('language');
              getUniversityCourses(subjectGrades, preferedCourses)
            }
            var $el;
            if($(this).hasClass("next-tab")) {
                $el = $($active).next();
            } else if($(this).hasClass("prev-tab")) {
                $el = $($active).prev();
            }

            if($el) {
                $el.find('a[data-toggle="tab"]').click();
            }
        });

         $(".table tr").click( function(e) {
            $(".table tr.selected").removeClass("selected");
            $(this).addClass("selected");
         })


         function getUniversityCourses(subjectGrades, preferedCourses) {
           var info = {'subjectGrade': subjectGrades, 'preferedCourse': preferedCourses}
           var url = "/" + lang + "/university-finder/";
           $.ajax({
                type: "POST",
                 url: url,
                 data: JSON.stringify(info),
                 contentType: 'application/json',
                 success: function(data){
                    var resultHtml = "";
                    for (var elem in data) {
                        resultHtml += "<tr><td class='course-name'><div>"+data[elem].course+"</div></td><td>"+data[elem].university+"</td></tr>"
                    }
                    if (data.length == 0) {
                      resultHtml = "Your grade may not be sufficient for university courses"
                    }
                    $('#resultCourses').append(resultHtml);
                 },
                 error: function () {
                     var resultHtml = "<tr><td>Opps! something went wrong. Please try again later</td></tr>"
                     $('#resultCourses').append(resultHtml);
                 }
             });
         }

         /*
         * ----------------------------------------------------------------------------------------
         *  Subject Grade
         * ----------------------------------------------------------------------------------------
         */
         function updateSubjectGrades() {
            var html = "";

            for(var sub in subjectGrades) {
                html += '<div class="box-item">';
                html += '<span class="name">' + sub + '</span>';
                html += '<span class="grade">' + subjectGrades[sub] + '</span>';
                html += '<span class="remove" data-sub="' + sub + '">x</span>';
                html += '</div>';
            }

            $("#subject-grades").html(html);
            $("#subject-grades").find(".remove").click(function(e) {
                $(this).parents(".box-item").remove();
                delete subjectGrades[$(this).data("sub")];
            });
         }

         updateSubjectGrades();

         $("#add-sub-grade").click(function() {
            var name = $("#sub-name").val();
            var grade = $("#sub-grade").val();

            subjectGrades[name] = grade;
            updateSubjectGrades();

            $("#subModal .close").click();
         })

         /*
         * ----------------------------------------------------------------------------------------
         *  Subject Grade
         * ----------------------------------------------------------------------------------------
         */
         function updatePreferedCourses() {
            var html = "";

            for(var course in preferedCourses) {
                html += '<div class="box-item">';
                html += '<span class="name">' + preferedCourses[course] + '</span>';
                html += '<span class="remove" data-course="' + preferedCourses[course] + '">x</span>';
                html += '</div>';
            }

            $("#prefered-courses").html(html);
            $("#prefered-courses").find(".remove").click(function(e) {
                $(this).parents(".box-item").remove();
                var index = preferedCourses.indexOf($(this).data("course"));
                preferedCourses.splice(index, 1);
            });
         }

         updatePreferedCourses();

         $("#add-prefered-course").click(function() {
            var name = $("#course-name").val();
            preferedCourses.push(name);
            updatePreferedCourses();

            $("#courseModal .close").click();
         })

        /*
         * ----------------------------------------------------------------------------------------
         *  pagination
         * ----------------------------------------------------------------------------------------
         */
         $(".pagination").on( "click", ".page-item", function(e) {
            var $activeItem = $(this).parents(".pagination").find(".active");

            var page = $(this).data("page");
            if(parseInt(page)) {
                $(this).addClass("active");
            } else {
                var $element;

                if(page === "prev") {
                    $element = $activeItem.prev();
                } else if(page === "next") {
                    $element = $activeItem.next();
                }

                page = $element.data("page");
                if($element && parseInt(page)) {
                    $element.addClass("active");
                }
            }

            if(parseInt(page)) {
                $activeItem.removeClass("active");
                alert(page);
            }
         });

         /*
         * ----------------------------------------------------------------------------------------
         *  CAREER GUIDE
         * ----------------------------------------------------------------------------------------
         */

         function renderHtml(subs, parent) {
            var html = "";
            for(var i = 0; i < subs.length; i++) {
                if(i % 3 === 0) {
                    html += "<div class='col-sm-6'>";
                }
                html += "<div class='sub-name'>" + subs[i] + "</div>";
                if(i % 3 === 2) {
                    html += "</div>";
                }
            }

            if(i % 3 !== 0) {
                html += "</div>";
            }

            $(parent).html(html);
         }

         function updateSubjects() {
            var course = $("#course").val();
            var subs = subjects[course];
            if(subs) {
                $("#sub-must .course").text(subs.name);
                renderHtml(subs.must,"#sub-must .subjects");
                renderHtml(subs.optional,"#sub-optional .subjects");
            }
         }

         updateSubjects();

         $("#findSchool").click( function() {
            var gender = $("#gender").val();
            var location = $("#location").val();
            var level = $("#level").val();
            var course = $("#course").val();

            updateSubjects();
         })

    })
})(jQuery);
