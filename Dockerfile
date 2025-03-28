# Use the official n8n image
FROM n8nio/n8n:latest

# Install git so we can clone repos
USER root
RUN apt-get update && apt-get install -y git
USER node

# Clone the MCP servers repo into a temporary folder
RUN git clone https://github.com/modelcontextprotocol/servers.git /tmp/servers

# 1) Install MCP Installer
RUN cd /tmp/servers/mcp-installer && npm install -g

# 2) Install MCP Compass
RUN cd /tmp/servers/mcp-compass && npm install -g

# 3) Install Google Calendar
RUN cd /tmp/servers/google-calendar-mcp && npm install -g

# 4) Install Gmail
RUN cd /tmp/servers/gmail-mcp-server && npm install -g

# 5) Install Tavily
RUN cd /tmp/servers/mcp-tavily && npm install -g# 

# 6) Install YouTube
RUN cd /tmp/servers/youtube-mcp-server && npm install -g# 

# 7) Install Scholarly
RUN cd /tmp/servers/mcp-scholarly && npm install -g# 

# 8) Install Airtable
RUN cd /tmp/servers/airtable-mcp-server && npm install -g# 

# 9) Install DeepSeek
RUN cd /tmp/servers/mcp-server-deepseek_r1 && npm install -g# 

# 10) Install AirBNB
RUN cd /tmp/servers/mcp-server-airbnb && npm install -g# 

#11) Install TravelPlanner
RUN cd /tmp/servers/travel-planner-mcp-server && npm install -g# 

# 12) Install ElevenLabs
RUN cd /tmp/servers/elevenlabs-mcp-server  && npm install -g# 

# 13) Install FireCrawl
RUN cd /tmp/servers/firecrawl-mcp-server && npm install -g# 

# 14) Install Pinecone
RUN cd /tmp/servers/mcp-pinecone && npm install -g# 
