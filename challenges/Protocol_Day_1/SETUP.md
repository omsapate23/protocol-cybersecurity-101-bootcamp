# Add to Bootcamp101demo
1. Upload only the contents of UPLOAD_TO_REPO to the root of the repository.
   Result: challenges/day1/START_HERE.txt, check.py, level1, level2, level3, link-desktop.sh.
   IMPORTANT: .briefing is not committed (gitignored); only its base64 copy,
   level1/.briefing.b64, lives in the repo so the flag is not readable by browsing
   GitHub. link-desktop.sh decodes .briefing.b64 into .briefing on first run.
2. If copying locally or in a Codespace, commit with:
   git add challenges/day1
   git commit -m "Add three beginner Day 1 practice levels"
   git push
3. For an existing Codespace, get the committed files with git pull --ff-only.
   If this fails because of local edits, preserve those edits before resolving it.
4. In the repository root run:
   bash challenges/day1/link-desktop.sh
5. Students open Terminal in the desktop and run:
   cd ~/Desktop/Day1
   cat START_HERE.txt
   cd level1
   cat MISSION.txt
6. To make the desktop link on every start, append the link command to the existing
   postStartCommand in .devcontainer/devcontainer.json. With the earlier setup use:
   "postStartCommand": "bash /usr/local/bin/bootcamp-start && bash challenges/day1/link-desktop.sh"
   Preserve a newer desktop startup command if Antigravity changed it. Run from the
   repository workspace folder (the default lifecycle-command working directory).
7. No Dockerfile change or desktop-image rebuild is needed for these files. For an
   existing running Codespace use step 4 immediately. A new Codespace uses the new
   configuration; an existing one needs its devcontainer configuration reapplied
   before you rely on the new lifecycle hook.

If the GUI is unavailable, all three levels also work in the VS Code terminal:
   cd challenges/day1
   cat START_HERE.txt

The scripts require Bash, Python 3 and GNU coreutils/grep, normally included in the
Ubuntu devcontainer setup. No pip installs, network access or extra services.
Keep INSTRUCTOR_ONLY.md outside the public student repository.
