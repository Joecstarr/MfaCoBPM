@_default:
    just --list

# Build project plan
plan:
    myst build ./documents/plan/project_plan.md --docx

# Build risk management plan
risk:
    myst build ./documents/risk/risk_management_plan.md --docx

# Build scheduling doc
schedule:
    myst build ./documents/schedule/schedule.md --docx

# Rename files: .doc -> .docx
rename:
    find ./_build/exports/ -iname "*.doc" -exec sh -c 'mv "${1}" "${1%.*}.docx" ' sh {} \;

# Build all the things.
all:
    just plan
    just risk
    just schedule
    just rename