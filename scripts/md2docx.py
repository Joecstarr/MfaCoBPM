import markdown
from tqdm import tqdm
from pathlib import Path
from pathlib import Path
from tqdm import tqdm
import typer
from html2docx import html2docx


def proc_md(data: str):
    return markdown.markdown(data)


def main(search_dir: str):
    img_pth = Path(search_dir)

    for image in tqdm(list(img_pth.glob("**/*.md"))):
        with open(str(image), "r") as ptfile:
            md_data = ptfile.read()

        html = proc_md(md_data)

        output_file = Path("./build")
        output_file.mkdir(parents=True, exist_ok=True)
        output_file = output_file / Path(str(image.stem) + ".docx")

        with open(output_file, "wb") as fp:
            buf = html2docx(html, title=str(image.stem))
            fp.write(buf.getvalue())

        ...


if __name__ == "__main__":
    typer.run(main)
