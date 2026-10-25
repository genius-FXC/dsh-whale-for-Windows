# Changelog

## 1.1.1-windows.1

- Include upstream macOS 1.1.1 (`551d7aa`), preserving its fix for reopening a web app with no visible window. The original Windows port was based on 1.1 (`dd6bec5`).
- Add `--open` to start DSH and open its authenticated web page, and `--panel` to show an existing Whale instance without starting a duplicate.
- Make the panel's open button start an offline DSH first, and add no-terminal VBS launchers for both Whale and DSH.
- Add the blue whale Windows icon with seven sizes, embedded executable resources and tray usage.
- Include the icon, launchers, balance/OAuth plugins and setup scripts in the Windows archive. Launchers support both a source checkout and an extracted release.
- Preserve ChatGPT OAuth, real balance/quota integrations, existing paths/settings and the Windows process supervision behavior.
- Allow the optional installed-DSH discovery test to skip on clean CI hosts; process tests still run against isolated fixtures.

Validation: 27 Windows checks and 5 balance/login tests passed on Windows. The new upstream contribution is arranged separately under mac/windows/shared; this standalone Windows repository keeps its existing paths so installed desktop shortcuts and DSH plugin registrations remain valid.
