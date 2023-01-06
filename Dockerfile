FROM intersystems/iris-community:2022.1.0.209.0
USER root
COPY CloudStudio/src /usr/irissys/CloudStudio/src
COPY CloudStudio/CloudStudio.sh /usr/irissys/CloudStudio/CloudStudio.sh
RUN chown -R irisowner /usr/irissys/CloudStudio
USER irisowner
RUN /usr/irissys/CloudStudio/CloudStudio.sh