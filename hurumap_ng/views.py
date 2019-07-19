from django.views.generic import TemplateView


class InsightsView(TemplateView):
    template_name = "insights.html"
