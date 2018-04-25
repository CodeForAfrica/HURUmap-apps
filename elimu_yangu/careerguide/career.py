from django.utils.translation import ugettext_lazy as _

career = {
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
            "ENGLISH"
        ]
    },
    "Science Teacher" : {
        "name" : _("MEDECINE"),
        "must" : [
            "PHYSICS",
            "CHEMISTRY",
            "BIOLOGY"
        ],
        "olevel_optional" : [
            "MATHEMATICS",
            "KISWAHILI",
            "ENGLISH"
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
            "ENGLISH",
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
            "ENGLISH",
            "KISWAHILI"
        ]
    },
    "Lawyer" : {
        "name" : _("LAWYER"),
        "must" : [
            "HISTORY",
            "ENGLISH LANGUAGE",
            "KISWAHILI"
        ],
        "olevel_optional" : [
            "GEOGRAPHY",
            "CIVICS"
        ]
    }
}
