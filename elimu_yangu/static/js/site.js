(function ($) {
    'use strict';

    var subjects = {
        "doctor" : {
            "name" : "MEDECINE",
            "must" : [
                "PHYSICS",
                "CHEMISTRY",
                "BIOLOGY",
                "ENGLISH"
            ],
            "optional" : [
                "MATHEMATICS",
                "GEOGRAPHY",
                "HISTORY",
                "KISWAHILI",
                "FRENCH"
            ]
        },
        "engineer" : {
            "name" : "ENGINEERING",
            "must" : [
                "PHYSICS",
                "CHEMISTRY",
                "MATHEMATICS",
                "ENGLISH"
            ],
            "optional" : [
                "BIOLOGY",
                "GEOGRAPHY",
                "HISTORY",
                "KISWAHILI",
                "FRENCH"
            ]
        }
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
           console.log(subjectGrades);
           console.log(preferedCourses);

           var info = {'subjectGrade': subjectGrades, 'preferedCourse': preferedCourses}
           $.ajax({
                type: "POST",
                 url: '/university-finder/',
                 data: JSON.stringify(info),
                 contentType: 'application/json',
                 success: function(data){
                    console.log(data)
                    var resultHtml = "";
                    for (var elem in data) {
                        console.log(elem)
                        resultHtml += "<tr><td class='course-name'><div>"+data[elem].course+"</div></td><td>"+data[elem].university+"</td></tr>"
                      }
                      $('#resultCourses').append(resultHtml);
                 },
                 error: function () {
                     var resultHtml = "<tr><td class='course-name'><div>"+"Course Name"+"</div></td><td>"+"University Name"+"</td></tr>"
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
