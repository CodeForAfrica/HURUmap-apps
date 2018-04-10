from django.views.generic import TemplateView


class ArticlesView(TemplateView):
    template_name = 'articles.html'
class AboutView(TemplateView):
	template_name='about.html'