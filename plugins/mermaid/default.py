#!/usr/bin/env python3
import argparse
import json
import sys
import base64


plugin = {
    "name": "Unsplash Images",
    "directives": [
        {
            "name": "mermaid-py",
            "doc": "An example directive for showing a nice random image at a custom size.",
            "alias": ["random-pic-py"],
            "arg": {
                "type": "string",
                "doc": "The ID of the image to use, e.g. 1",
            },
            "options": {
                "size": {
                    "type": "string",
                    "doc": "Size of the image, for example, `500x200`.",
                },
            },
        }
    ],
}


def declare_result(content):
    """Declare result as JSON to stdout

    :param content: content to declare as the result
    """

    # Format result and write to stdout
    json.dump(content, sys.stdout, indent=2)
    # Successfully exit
    raise SystemExit(0)


def run_directive(name, data):
    """Execute a directive with the given name and data

    :param name: name of the directive to run
    :param data: data of the directive to run
    """
    assert name == "mermaid-py"

    graph = base64.b64encode(str.encode(data["node"]["value"])).decode("ascii")
    img = {
        "type": "image",
        "url": f"https://mermaid.ink/img/{graph}",
    }
    return [img]


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group()
    group.add_argument("--role")
    group.add_argument("--directive")
    group.add_argument("--transform")
    args = parser.parse_args()
    if args.directive:
        data = json.load(sys.stdin)
        declare_result(run_directive(args.directive, data))
    elif args.transform:
        raise NotImplementedError
    elif args.role:
        raise NotImplementedError
    else:
        declare_result(plugin)
