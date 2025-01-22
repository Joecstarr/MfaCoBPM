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
    myst build ./plan/birdhouse_project_plan.md --pdf
    myst build ./risk/birdhouse_risk_management_plan.md --pdf
    myst build ./schedule/birdhouse_schedule.md --pdf
    just rename

# Build scheduling doc
[working-directory: 'documents']
docs:
    myst clean --all -y
    myst init --write-toc
    myst build ./plan/project_plan.md
    myst build ./plan/sections/personnel_cards/person.md
    myst build ./plan/sections/requirement_cards/requirement.md
    myst build ./risk/risk_management_plan.md
    myst build ./risk/sections/risk_cards/risk_card.md
    myst build ./schedule/schedule.md
    myst build ./schedule/sections/task_cards/task_card.md
    just rename

# Build course design docs
[working-directory: 'course_planning']
design:
    myst clean --all -y
    myst init --write-toc
    myst build ./course_design.md
    just rename

# Rename files: .doc -> .docx
rename:
    find . -iname "*.doc" -exec sh -c 'mv "${1}" "${1%.*}.docx" ' sh {} \;

# This will only work for how I (@joecstarr) have zotero set up.
bib:
    zotero &
    curl http://127.0.0.1:23119/better-bibtex/export/collection\?/6/268CXLKT.biblatex > ./refs.bib

# Build all the things.
all:
    just example
    just docs
    just design
