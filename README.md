# Kinnexus IG

A FHIR Implementation Guide built with SUSHI and the IG Publisher.

## Prerequisites

- Java (for running the IG Publisher)
- [SUSHI](https://fshschool.org/docs/sushi/) (optional, for FSH development)

## Getting Started

### 1. Update the IG Publisher

Before building for the first time, update the IG Publisher:

```bash
make update-publisher
```

Or run the script directly:

```bash
./_updatePublisher.sh
```

### 2. Build the Implementation Guide

Build the IG using:

```bash
make build
```

Or use the generation script:

```bash
./_genonce.sh
```

This will:
- Process FSH files (if any) in `input/fsh/`
- Generate FHIR resources
- Build the complete Implementation Guide
- Output results to the `output/` directory

### 3. View the Implementation Guide

Open the generated IG in your browser:

```bash
make open-ig
```

Or manually open `./output/index.html`

## Development

- **FSH files**: Add your FSH definitions to `input/fsh/`
- **Configuration**: Edit `sushi-config.yaml` to configure the IG metadata
- **Pages**: Add custom pages to `input/pagecontent/`
- **Resources**: Add additional resources to `input/resources/`

## Project Structure

```
.
├── input/              # Source content
├── input-cache/        # IG Publisher cache
├── fsh-generated/      # Generated from FSH
├── output/             # Built IG output
├── sushi-config.yaml   # SUSHI configuration
└── ig.ini              # IG Publisher configuration
```
