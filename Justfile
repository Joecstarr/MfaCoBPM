@_default:
    just --list

# Build project plan
plan:
    myst build ./documents/plan/project_plan.md --docx --pdf

# Build risk management plan
risk:
    myst build ./documents/risk/risk_management_plan.md --docx --pdf

# Build scheduling doc
schedule:
    myst build ./documents/schedule/schedule.md --docx --pdf

# Rename files: .doc -> .docx
rename:
    find ./_build/exports/ -iname "*.doc" -exec sh -c 'mv "${1}" "${1%.*}.docx" ' sh {} \;

toc:
    myst init --write-toc

clean:
    myst clean --all -y

# Build all the things.
all:
    just clean
    just toc
    just plan
    just risk
    just schedule
    just rename