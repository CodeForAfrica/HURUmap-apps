from django.views.generic import TemplateView, View
from django.views.generic.base import ContextMixin
from wazimap.data.utils import get_session

SLUG_MAPPING_STATUS = {
    'not_done': 'Not done',
    'in_progress': 'In Progress',
    'done': 'Done',
    'five_yr_plans': 'Five year plans',
    'altered_promise': 'Altered Promise'
}


class ArticlesView(TemplateView):
    template_name = 'articles.html'


class AboutView(TemplateView):
    template_name = 'about.html'


class PromisesView(TemplateView):
    template_name = 'promises.html'


class CategoriesView(TemplateView):
    template_name = 'categories.html'


class FulfilledView(TemplateView):
    template_name = 'fulfilled.html'


class HealthView(TemplateView):
    template_name = 'health.html'


class PromisesByStatusDetailView(ContextMixin, View):
    template_name = 'profile/promises_by_status.html'

    def get_context_data(self, **kwargs):
        context = super(PromisesByStatusDetailView, self).get_context_data(
            **kwargs)
        self.status = self.kwargs['status']
        self.geo_code = self.kwargs['geo_code']
        self.geo_level = self.kwargs['geo_level']
        context['promises'] = self.query_db()
        context['status'] = self.status

    def query_db(self):
        query = "SELECT promise,sector FROM promises WHERE geo_code='{}' AND geo_level='{}' AND status='{}'".format(
            self.geo_code, self.geo_level, self.status)
        session = get_session()
        result = session.execute(query).fetchall()
        return [{'promise': i[0], 'sector': i[1]} for i in result]


class PromisesByCategoryView(ContextMixin, View):
    template_name = 'profile/promises_by_sector.html'

    def get_context_data(self, **kwargs):
        context = super(PromisesByCategoryView, self).get_context_data(**kwargs)
        self.sector = self.kwargs['sector']
        self.geo_code = self.kwargs['geo_code']
        self.geo_level = self.kwargs['geo_level']

    def query_db(self):
        query = "SELECT promise,status FROM promises WHERE geo_code='{}' AND geo_level='{}' AND sector='{}'".format(
            self.geo_code, self.geo_level, self.sector)
        session = get_session()
        result = session.execute(query).fetchall()
        return [{'promise': i[0], 'status': i[1]} for i in result]