FROM python:3.10

# 当执行操作时，coScene 平台会自动设置这些环境变量。它们被包含在 Dockerfile 中，
# 以确保 Docker 镜像可以在本地使用 "docker run" 运行，
# 也可以在 coScene 平台内部运行。

ENV COS_FILE_VOLUME	="/input"
ENV COS_OUTPUT_VOLUME="/output"

COPY src/inspect_files ./inspect_files

ENTRYPOINT [ "python", "-m", "inspect_files" ]