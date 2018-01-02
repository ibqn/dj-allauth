from django.views.generic.base import TemplateView


class IndexPageView(TemplateView):

    template_name = 'main/index.html'


class MainPageView(TemplateView):

    template_name = 'main/main.html'
