# Gitpod + DDEV + JetBrains + Drupal Demo

[![Security](https://github.com/digitalpolygon/gitpod-ddev-demo/actions/workflows/security.yml/badge.svg)](https://github.com/digitalpolygon/gitpod-ddev-demo/actions/workflows/security.yml)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/digitalpolygon/gitpod-ddev-demo)

Sample project that showcases what a project might look like when run through Gitpod. Its aim is to demonstrate a
solution that combines Gitpod, DDEV, JetBrains IDEs, and Drupal (plus multisite).

## Outstanding Issues

- Breadcrumb bar does not display through Gateway https://youtrack.jetbrains.com/issue/CWM-621/Missing-breadcrumbs-feature-on-the-client

## Demo

1. Install JetBrains Gateway Gitpod plugin (follow instructions here https://plugins.jetbrains.com/plugin/18438-gitpod-gateway).
2. Click the "Open in Gitpod" button at the top of this page.
3. Wait for the workspace to be created.
4. When prompted, allow the browser to open the JetBrains Gateway client on your system.
5. In the terminal run `ddev list-site-links` to get links to the homepage for both sites, and login links.
6. Start developing on a completely initialized application.

## Summary

A complete development environment allowing remote use of JetBrains' PHPStorm. Workspaces are prebuilt from the latest `main` (or the tip of an open pull request branch) so when starting a new branch of work, or reviewing a pull request, you are starting from an already initialized application, ready to go, no extra steps needed.

![Screenshot of PHPStorm after connecting through Gateway client.](https://user-images.githubusercontent.com/419534/188730200-f52f8fcc-e6a8-48c0-8209-c761f48dfefc.png)
