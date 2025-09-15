# Use official Node.js image as the base
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port (default Next.js port)
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]