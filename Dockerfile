# Use the official n8n image as a base
FROM n8nio/n8n:latest

# Install the MCP Installer globally
RUN npm install -g mcp-installer mcp-compass Gmail-MCP-Server google-calendar-mcp mcp-server-airbnb TRAVEL-PLANNER-MCP-Server mcp-scholarly mcp-tavily airtable-mcp-server MCP-server-Deepseek_R1 youtube-mcp-server mcp-pinecone

# Optionally install more MCP servers now or later
# RUN npm install -g mcp-compass mcp-calendar mcp-email

