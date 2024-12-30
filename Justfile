set export

# Set up development environment
plan:
    myst build ./documents/plan/project_plan.md --docx

risk:
    myst build ./documents/risk/risk_management_plan.md --docx

schedule:
    myst build ./documents/schedule/schedule.md --docx

rename:
    find ./_build/exports/ -iname "*.doc" -exec sh -c 'mv "${1}" "${1%.*}.docx" ' sh {} \;

all:
    just plan
    just risk
    just schedule
    just rename