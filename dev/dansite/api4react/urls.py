from django.urls import include, path
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'cities', views.CityViewSet)

# Wire up API with auto URL routing, not adding login URLs yet
urlpatterns = [
    path('', include(router.urls)),
    # Uncomment to allow admin login from root URL
    # path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
]

