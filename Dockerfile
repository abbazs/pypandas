FROM python:3.9-buster as python_jupyter
ENV DEBIAN_FRONTEND='noninteractive'
RUN pip install pandas rich notebook requests
ENV JUPYTER_TOKEN=jupyter_notebook
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--autoreload", "--no-mathjax", "--allow-root"]