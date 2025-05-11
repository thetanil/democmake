FROM debian:11-slim

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++-10 \
    libstdc++-10-dev \
    gdb \
    cmake \
    make \
    clang-tidy \
    lcov \
    wget \
    git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Copy the project files into the container
COPY . .

# Install GoogleTest
# RUN mkdir -p /workspace/build && cd /workspace/build && \
#     cmake -DBUILD_GMOCK=OFF -DBUILD_GTEST=ON .. && \
#     make && make install && rm -rf /workspace/build

# Default command (optional)
# CMD ["./build/hello-cli"]