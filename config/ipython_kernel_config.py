# ipython_kernel_config.py
import os

c = get_config()
c.InteractiveShellApp.exec_lines = [
    "import os",
    "os.environ['OPENAI_API_KEY'] = os.getenv('OPENAI_API_KEY', '')"
]