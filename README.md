# Autogen Resume Writer

This project leverages Autogen to help users create, analyze, and refine resumes, incorporating AI agents for automated feedback and content generation.

## Features

- **Resume Analysis**: Uses Autogen agents to provide feedback on structure, keywords, and relevance to target positions.
- **Cover Letter Generation**: Generates personalized cover letters based on resume content and job requirements.
- **Agent-Based Automation**: Integrates with OpenRouter for AI-driven suggestions and improvements.

## Project Architecture

This section includes multiple diagrams to illustrate the project architecture and flow, based on the search results.

## Diagrams

### Block diagrams

#### Idea at a glance

```mermaid
mindmap
  root((Resume Writer))
    (Discover<br/>Job<br/>Post)
      (Jobsdb<br/>Search<br/>List)
      (classification)
        (job<br/>type)
        (job<br/>requirement)
        (candiates<br/>portfolio)
    (Write<br/>Application<br/>Letter)
        (writing<br/>agents)
        (review<br/>agents)
    (Tools)
      (playwright)
      (autogen)
        (openrouter)
            (deepseek)
      (markdown)
        (docx)
        (draft)
```

#### Autogen Agents Workflow

```mermaid
graph TD;
    A[User provides resume or job details] --> B{Autogen agents};
    B --> C[Resume analysis];
    B --> D[Cover letter generation];
    C --> E[Provide feedback];
    D --> F[Generate personalized content];
    E & F --> G[Output refined resume and cover letter];
```

## Installation

### 1. Clone the repository

### 2. Set up the environment using conda

```bash
conda create -q -y -n autogen_resume_writer python=3.11
conda activate autogen_resume_writer
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Install additional libraries

```bash
pip install pytest-playwright
playwright install --with-deps
playwright install chrome
```

### 5. Deactivate the conda environment

```bash
conda deactivate
```

### 6. Set the `OPENROUTER_API_KEY` environment variable for API calls

## Usage

1. Run the main script:

```bash
python main.py
```

2. Follow the prompts to input your resume details or job target.

## Dependencies

- Python 3.11 or later
- Autogen
- OpenRouter API key (for AI services)
- Required libraries listed in `requirements.txt`

## License

MIT

## Contributing

Pull requests are welcome. Ensure all changes adhere to the development standards and include tests where necessary.
