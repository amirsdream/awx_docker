DATABASES = {
    'default': {
        'ATOMIC_REQUESTS': True,
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': "awx",
        'USER': "awx",
        'PASSWORD': "Ch4ng3m3!",
        'HOST': "awx_postgres",
        'PORT': "5432",
    }
}
BROKER_URL = 'amqp://{}:{}@{}:{}/{}'.format(
    "guest",
    "guest",
    "awx_rabbitmq",
    "5672",
    "awx")

CHANNEL_LAYERS = {
    'default': {'BACKEND': 'asgi_amqp.AMQPChannelLayer',
                'ROUTING': 'awx.main.routing.channel_routing',
                'CONFIG': {'url': BROKER_URL}}
}
