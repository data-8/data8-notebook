FROM data8/systemuser
ADD jupyter_notebook_config.py /root/.jupyter/

# Remote our data8-specific OAuth client ID
RUN rm -f /usr/local/etc/jupyter/nbconfig/common.json

CMD ["jupyter", "notebook"]
