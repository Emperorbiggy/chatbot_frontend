# Step 1: Build the React app
FROM node:18 AS build

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build  # Builds the app for production

# Step 2: Serve the React app using Nginx
FROM nginx:alpine

# Copy the build folder to the Nginx container's HTML folder
COPY --from=build /app/build /usr/share/nginx/html

# Copy your custom nginx.conf if you have one
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
