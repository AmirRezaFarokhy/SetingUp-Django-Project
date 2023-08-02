from __future__ import absolute_import, unicode_literals
import os
from celery import Celery

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'YOUR_CELERY_NAME.settings')
app = Celery('YOUR_CELERY_NAME')
app.config_from_object('django.conf:settings', namespace='CELERY')
app.autodiscover_tasks()

