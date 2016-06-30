c.NotebookApp.open_browser = False
# The IP address the notebook server will listen on.
try:
    import jupyter_client
    c.NotebookApp.ip = jupyter_client.localinterfaces.PUBLIC_IPS[0]
except:
    c.NotebookApp.ip = 'localhost'
