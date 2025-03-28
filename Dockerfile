# Use the official n8n image as a base
FROM n8nio/n8n:latest

# Install the MCP Installer globally
RUN npm install -g mcp-installer mcp-compass gmail-mcp-Server google-calendar-mcp mcp-server-airbnb travel-planner-mcp-Server mcp-scholarly mcp-tavily airtable-mcp-server mcp-server-deepseek_r1 youtube-mcp-server mcp-pinecone

# Optionally install more MCP servers now or later
# RUN npm install -g mcp-compass mcp-calendar mcp-email

