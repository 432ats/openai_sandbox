# jupyter_notebook_config.py
import os

c = get_config()
c.NotebookApp.terminado_settings = {'shell_command': ['/bin/bash']}
c.NotebookApp.env = {'OPENAI_API_KEY': os.getenv('OPENAI_API_KEY')}