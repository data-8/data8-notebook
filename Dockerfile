FROM data8/systemuser
ADD jupyter_notebook_config.py /root/.jupyter/
CMD ["jupyter", "notebook"]
