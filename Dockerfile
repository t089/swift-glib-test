FROM swift:5.10-jammy

RUN apt update && apt -y install libglib2.0-dev && apt -y clean