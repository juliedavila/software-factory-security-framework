# Local mkdocs harness for SF².
#
# Mirrors the GitLab CI build environment (.gitlab-ci.yml) so that a clean
# `mkdocs build --strict` here matches what the pipeline does. This closes the
# gap that previously forced hand-computed link/anchor checks: the strict build
# fails loudly on any broken internal link or missing heading anchor.
#
# Base image, system libraries, and Python deps are kept identical to CI.
FROM python:3.11

# System deps for mkdocs-material[imaging] social cards and the with-pdf plugin
# (cairo / pango / gdk-pixbuf), identical to the CI before_script.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libcairo2 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libgdk-pixbuf-2.0-0 \
        shared-mime-info \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /docs

# Install from the same requirements.txt CI uses. Copied in at build time so
# the dependency layer caches; the repo itself is bind-mounted at run time
# (the git-revision-date-localized plugin needs the live .git directory).
COPY requirements.txt /docs/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Default to live preview. Override with `mkdocs build --strict` for CI parity.
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
