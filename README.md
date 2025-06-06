# Homebrew Tap for Tips CLI

This is a Homebrew tap for the [Tips CLI tool](https://github.com/jonnyspicer/tips) - a command-line tool for generating and displaying helpful programming tips using AI language models.

## Installation

```bash
brew tap jonnyspicer/tips
brew install tips
```

## Usage

After installation, you can use the `tips` command:

```bash
# Generate tips for a topic (requires API key)
export OPENAI_API_KEY="your-api-key"
tips generate -t "git" -c 10

# Display tips interactively
tips show

# Display help
tips --help
```

## Features

- **AI-Powered Generation**: Generate tips using OpenAI, Anthropic, or Google AI models
- **Interactive Display**: Browse tips in an interactive terminal interface  
- **Topic Filtering**: Organize and filter tips by topic
- **Local Storage**: Tips are stored locally in JSON format
- **Auto-refresh**: Automatically cycle through tips at configurable intervals
- **Mark as Known**: Remove tips you've learned to focus on new content

## Requirements

- macOS (Intel or Apple Silicon)
- API key for one of the supported LLM providers (OpenAI, Anthropic, or Google)

## Documentation

For complete documentation, visit the [main repository](https://github.com/jonnyspicer/tips).

## Contributing

Issues and pull requests should be submitted to the [main repository](https://github.com/jonnyspicer/tips/issues).