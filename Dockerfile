FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./pagraphcontrol-git/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
