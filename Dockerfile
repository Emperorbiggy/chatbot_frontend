# Step 1: Build the React app
FROM node:16 as build

WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# # Step 2: Set up Nginx to serve the app
# FROM nginx:alpine

# # Copy custom nginx.conf to replace the default
# COPY nginx.conf /etc/nginx/nginx.conf

# # Copy the built React app to Nginx's default html directory
# COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
