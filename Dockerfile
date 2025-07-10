FROM python:3.11

# Create non-root user
RUN useradd -m -u 1000 user
USER user

# Make sure user local bin is in PATH
ENV PATH="/home/user/.local/bin:$PATH"

# Set workdir
WORKDIR /app

# Copy files needed for dependency install
COPY --chown=user requirements.txt requirements.txt
COPY --chown=user setup.py setup.py
COPY --chown=user README.md README.md
COPY --chown=user Generator/ Generator/

# Install dependencies
RUN pip install --user --no-cache-dir --upgrade pip && \
    pip install --user --no-cache-dir -r requirements.txt

# Copy your main entry point
COPY --chown=user app.py app.py

# Expose the port
EXPOSE 7860

# Run your app
CMD ["python", "app.py"]
