# Niaz Foundations - CI/CD Setup

## GitHub Pages Deployment

This project is configured to automatically deploy to GitHub Pages using GitHub Actions whenever code is pushed to the `main` branch.

### Setup Instructions

1. **Enable GitHub Pages in your repository:**
   - Go to your GitHub repository settings
   - Navigate to "Pages" in the left sidebar
   - Under "Source", select "GitHub Actions"
   - Click "Save"

2. **Repository Settings:**
   - Ensure your repository name matches the base href in the workflow
   - The current setup assumes your repository is named "niazfoundations"

3. **Automatic Deployment:**
   - Push your code to the `main` branch
   - GitHub Actions will automatically build and deploy your site
   - Your site will be available at: `https://basitmunir121.github.io/niazfoundations/`

### Local Testing

To test the production build locally:

```bash
npm run build -- --configuration production --base-href "/niazfoundations/"
```

To serve the built files locally:

```bash
npx http-server dist/niaz-foundations-website -p 8080
```

### Workflow Details

The GitHub Actions workflow (`deploy.yml`) does the following:

1. **Triggers:** Runs on push to `main` branch and pull requests
2. **Environment:** Uses Ubuntu latest with Node.js 18
3. **Steps:**
   - Checks out the code
   - Sets up Node.js with npm caching
   - Installs dependencies using `npm ci`
   - Builds the Angular app for production
   - Deploys to GitHub Pages

### Important Notes

- The workflow uses the correct base href for GitHub Pages
- All necessary permissions are configured
- The build artifacts are properly uploaded to GitHub Pages
- The deployment uses the latest GitHub Actions for Pages

### Troubleshooting

If deployment fails:

1. Check the Actions tab in your GitHub repository
2. Ensure GitHub Pages is enabled in repository settings
3. Verify the repository name matches the base href
4. Check that all dependencies are properly declared in package.json

### Custom Domain (Optional)

To use a custom domain:

1. Add a `CNAME` file to the `public` folder with your domain
2. Configure DNS settings with your domain provider
3. Update the base href in the workflow if needed