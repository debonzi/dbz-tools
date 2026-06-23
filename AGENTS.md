# Repository Instructions

- Organize tools by context using `<context>/<tool>/<binary>`, for example `k8s/k8ctx/k8ctx`.
- Keep shell tools dependency-light and prefer Bash plus existing system commands.
- Installation scripts must not overwrite user files. If a destination exists and is not the expected symlink, fail with a clear message.
- Use standardized commit messages following Conventional Commits, for example `feat(k8s): add kubectl wrappers`.
