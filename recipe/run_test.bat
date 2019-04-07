cd test
setlocal EnableDelayedExpansion
set error=0

for %%f in (*.py) do (
    python "%%f"
    if "!errorlevel!" NEQ "0" (
        set error=1
    )
)

if %error% 1 exit 1
exit 0
