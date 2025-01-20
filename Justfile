@_default:
    just --list

# Set up development environment
bootstrap:
    uv venv
    uv pip install -r requirements.txt

[working-directory: 'example']
example:
    myst clean --all -y
    myst init --write-toc
    myst build --pdf


# Build project plan
plan:
    myst build ./documents/plan/project_plan.md

# Build risk management plan
risk:
    myst build ./documents/risk/risk_management_plan.md

# Build scheduling doc
schedule:
    myst build ./documents/schedule/schedule.md

# Build course design docs
design:
    myst build ./course_planning/course_design.md

# Rename files: .doc -> .docx
rename:
    find ./_build/exports/ -iname "*.doc" -exec sh -c 'mv "${1}" "${1%.*}.docx" ' sh {} \;

toc:
    myst init --write-toc

clean:
    myst clean --all -y

# This will only work for how I (@joecstarr) have zotero set up.
bib:
    zotero &
    curl http://127.0.0.1:23119/better-bibtex/export/collection\?/6/268CXLKT.biblatex > ./refs.bib

# Build all the things.
all:
    just clean
    just toc
    just plan
    just risk
    just schedule
    just design
    just rename
