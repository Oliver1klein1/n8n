FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp mcp-installer mcp-compass google-calendar-mcp gmail-mcp-server mcp-tavily youtube-mcp-server mcp-scholarly airtable-mcp-server mcp-server-deepseek_r1 mcp-server-airbnb travel-planner-mcp-server elevenlabs-mcp-server mcp-pinecone

# Revert to the node user for security purposes
USER node
