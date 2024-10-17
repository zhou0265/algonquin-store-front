# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Set environment variables for backend services
ENV ORDER_SERVICE_URL=https://order-service.fake.net/
ENV PRODUCT_SERVICE_URL=https://product-service.fake.net/

# Expose the application's port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
