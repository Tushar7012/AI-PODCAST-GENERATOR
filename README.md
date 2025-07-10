# 🎙️ AI Podcast Generator 🎧

    This project is an **AI-powered podcast generator** that:
    - Scrapes blog content from any URL,
    - Summarizes the content using a multi-agent LLM pipeline,
    - Converts the summary into speech to generate a podcast audio!

---

## 📂 Project Structure

    AI_PODCAST_GENERATOR/
    ├── Generator/
    │ └── summarizer/
    │ ├── init.py
    │ └── blog_summarizer.py
    ├── app.py
    ├── setup.py
    ├── requirements.txt
    ├── Dockerfile
    ├── .env
    └── README.md

## ⚙️ Setup Instructions

### 1️⃣ Clone the repo

    git clone <your-repo-url>
    cd AI_PODCAST_GENERATOR

### 2️⃣ Create your .env file

    GEMINI_API_KEY=your_gemini_key_here
FIRECRAWL_API_KEY=your_firecrawl_key_here

### 3️⃣ Build Docker image

    docker build -t ai-podcast-generator .

### 4️⃣ Run the container

    docker run -it --env-file .env -p 7860:7860 ai-podcast-generator

### 5️⃣ How it works 

    Agent 1: Scrapes the blog using FirecrawlScrapeWebsiteTool.

    Agent 2: Summarizes the scraped content with Gemini.

    The summary is saved to blog_summary.txt and can be converted to audio using text-to-speech


# TECH STACK

    Crew AI
    FireCrawl
    Gemini
    Gradio