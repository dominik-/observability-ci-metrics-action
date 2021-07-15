FROM returntocorp/semgrep:0.58.2

USER root

COPY entrypoint.sh /entrypoint.sh
COPY analysis.py /analysis.py
COPY tmm.py /tmm.py
COPY rules-static/ rules-static/

ENTRYPOINT [ "/entrypoint.sh" ]