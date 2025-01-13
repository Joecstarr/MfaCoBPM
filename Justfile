@_default:
    just --list


# Set up development environment
bootstrap:
    uv venv
    uv pip install -r requirements.txt

# Build project plan
plan:
    myst build ./documents/plan/project_plan.md

# Build risk management plan
risk:
    myst build ./documents/risk/risk_management_plan.md

# Build scheduling doc
schedule:
    myst build ./documents/schedule/schedule.md

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