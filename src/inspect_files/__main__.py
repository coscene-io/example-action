import logging
import os
import json

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


def main():
    input_dir = os.getenv("COS_FILE_VOLUME")
    # output_dir = os.getenv("COS_OUTPUT_VOLUME")

    if not input_dir:
        # or not output_dir:
        error_msg = "Please set coScene input and output directories"
        logger.error(error_msg)
        raise RuntimeError(error_msg)

    for root, dirs, files in os.walk(input_dir):
        for file in files:
            file_path = os.path.join(root, file)
            file_size = os.path.getsize(file_path)
            print(f"File Path: {file_path}, File Size: {file_size} bytes", flush=True)


if __name__ == "__main__":
    main()
