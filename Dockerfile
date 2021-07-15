FROM returntocorp/semgrep:0.58.2

WORKDIR ${GITHUB_WORKSPACE}

COPY entrypoint.sh /entrypoint.sh

ADD analysis.py analysis.py
ADD tmm.py tmm.py
ADD rules-static/ rules-static/

ENTRYPOINT [ "/entrypoint.sh" ]