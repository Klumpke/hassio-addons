ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

RUN pip install --no-cache-dir -r pyyaml==3.13 pyserial==3.4 paho-mqtt==1.4.0

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="S0PCM-reader" \
    io.hass.description="S0PCM-reader add-on by Klumpke's Community Add-ons" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Jeroen Klompen <jeroen@klompen.net>" \
    org.opencontainers.image.title="Example" \
    org.opencontainers.image.description="S0PCM-reader add-on by Klumpke's Community Add-ons" \
    org.opencontainers.image.vendor="Klumpke's Community Add-ons" \
    org.opencontainers.image.authors="Jeroen Klompen <jeroen@klompen.net>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://klompen.net" \
    org.opencontainers.image.source="https://github.com/klumpke/hass-addons" \
    org.opencontainers.image.documentation="https://github.com/klumpke/hass-addons/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}