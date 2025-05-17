# tiago-calibration

This is the repository that contains source code for the [Figaroh Plus website](https://thanhndv212.github.io/tiago-calibration-webpage).

## How to Create a GitHub.io Webpage

GitHub Pages is a free hosting service that takes HTML, CSS, and JavaScript files directly from a repository on GitHub and publishes a website. Learn more her: https://pages.github.com/
Your site may take a few minutes to deploy. GitHub will show a green checkmark when it's ready.

### Prerequisites

- Basic knowledge of HTML and CSS
- Familiarity with [Bulma](https://bulma.io/) CSS framework
- Git for version control
- GitHub account for hosting with GitHub Pages

### Step 1: Clone or Download this Repository

Start by either cloning this repository or downloading it as a ZIP file:
```bash
# Clone the repository
git clone https://github.com/thanhndv212/tiago-calibration-webpage.git your-project-name
cd your-project-name

# Remove git history and start fresh
rm -rf .git
git init
```

### Step 2: Rename the Project

The repository comes with a helpful script to automatically replace all instances of "Figaroh Plus" with your own project name:

```bash
# Make the script executable
chmod +x rename_project.sh

# Run the script with your project name
./rename_project.sh YourProjectName

# Example:
# ./rename_project.sh AwesomeNeRF
```

This script will:
- Replace all instances of "Figaroh Plus" with your project name in the codebase
- Update HTML titles and meta tags
- Replace any URLs containing "tiago-calibration.github.io"
- Update the README title

After running the script, review the changes to make sure everything was replaced correctly.

### Step 3: Website Structure

The website has the following structure:

```
your-project-name/
├── index.html
├── about.html
├── research.html
├── publications.html
├── contact.html
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
└── README.md
```

- `index.html`: The main landing page of your website.
- `about.html`: A page to describe your project or research group.
- `research.html`: A page to detail your research projects.
- `publications.html`: A page to list your publications.
- `contact.html`: A page with contact information.
- `assets/`: A directory for your static assets like CSS, JavaScript, and images.
- `README.md`: This file, containing instructions and information about the website.

### Step 4: Customize Content

Edit the HTML files in a text editor to update the content with your own information. Be sure to update:

- Project or research group name
- Description of your research
- List of publications
- Contact information

### Step 5: Modify Styles

Customize the styles by editing the CSS files located in the `assets/css/` directory. You can change colors, fonts, and layout styles to match your desired look.

### Step 6: Add or Replace Images

Add your own images or replace existing ones in the `assets/images/` directory. Update the HTML files to reference your new images.

### Step 7: Deploying Your Website

Once you are satisfied with your website, you can deploy it using GitHub Pages. If you cloned the repository, you can push your changes to GitHub:

```bash
git add .
git commit -m "Initial commit with my research project website"
git push origin main
```

Then, visit `https://<your-github-username>.github.io/<your-repo-name>` to see your live website.


# Website License
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
