# Instructor guide — do not upload this guide to the student repository
Inspired by Bandit's beginner progression, with original tasks and material.
Topics match the supplied Day 1 notes: hidden files, grep, and Base64.
Budget 20-30 minutes including a short debrief. Suggested practice scores: 100 each.

## Solutions (run from challenges/day1)
Level 1:
```bash
cd level1
ls -la
cat .briefing
```
Flag: `PROTOCOL{hidden_in_plain_sight}`

Level 2:
```bash
cd ../level2
grep "BRIEFING_READY" activity.log
```
Flag: `PROTOCOL{follow_the_logs}`

Level 3:
```bash
cd ../level3
base64 -d dispatch.b64
```
Flag: `PROTOCOL{encoding_is_not_encryption}`

Checker, when inside level3:
```bash
python3 ../check.py
```
Run it once per level. It checks answers but does not track prior completion.

Debrief: Hidden does not mean access-protected. Logs can reveal useful evidence;
avoid storing real secrets in them. Base64 is not encryption. Do not describe this
last level as cracking encryption. These are offline synthetic practice files.

All levels are visible in a student's own Codespace, and flags are in repository
history/files. This is guided practice, not tamper-resistant scoring or Bandit's
separate-account model. Do not use these public flags for a prize competition.
The sponsor's CTF platform remains separate. No sponsor integration is required.
