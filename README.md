# Aloha Course Generator

A streamlined web application for creating courses at Aloha University. This tool integrates with n8n automation workflows to automate the course creation process.

![Aloha University](https://img.shields.io/badge/Aloha-University-6B2D2D?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-4A7C7C?style=for-the-badge)

## ✨ Features

- **Course Suggestions Autocomplete** - Search from 220+ predefined courses with auto-population
- **Cascading Dropdowns** - College → Department → Subdiscipline hierarchy
- **Auto-populated Fields** - College Code, Dept Code, Account ID, and Sub Code fill automatically
- **Test/Production Toggle** - Easy switching between test and production n8n webhooks
- **Aloha University Branding** - Matches the official AU color scheme (burgundy, teal, gold, cream)
- **Responsive Design** - Works on desktop and mobile devices
- **Docker Ready** - Includes Dockerfile and docker-compose for easy deployment

## 🚀 Quick Start

### Option 1: Open Directly
Simply open `index.html` in your browser.

> ⚠️ Note: Running from `file://` may cause CORS issues with webhook submissions.

### Option 2: Python HTTP Server
```bash
cd Aloha-Course-Generator
python3 -m http.server 8000
```
Open: http://localhost:8000

### Option 3: Node.js Serve
```bash
npx serve .
```
Open: http://localhost:3000

### Option 4: Docker (Recommended for Production)
```bash
docker compose up -d
```
Open: http://localhost:3000

## 📁 Project Structure

```
Aloha-Course-Generator/
├── index.html          # Main application (HTML, CSS, JS)
├── courses.js          # Course suggestions data (220+ courses)
├── Dockerfile          # Docker image configuration
├── docker-compose.yml  # Docker orchestration
├── nginx.conf          # Nginx server configuration
├── .dockerignore       # Docker build exclusions
└── README.md           # This file
```

## 🎨 Color Scheme

The application uses the official Aloha University brand colors:

| Color | Hex | Usage |
|-------|-----|-------|
| **Burgundy** | `#6B2D2D` | Primary brand, headers, buttons |
| **Teal** | `#4A7C7C` | Secondary accent, production mode |
| **Gold** | `#C4A35A` | Highlights, test mode |
| **Cream** | `#F5F0E8` | Background |

## 🔧 Configuration

### Webhook URLs

The application supports two webhook endpoints:

| Mode | URL |
|------|-----|
| **Test** | `https://n8n.aloha.university/webhook-test/aloha-course-trigger` |
| **Production** | `https://n8n.aloha.university/webhook/aloha-course-trigger` |

Use the toggle switch in the header to switch between modes.

### Form Data Submitted

The form submits the following JSON payload to the webhook:

```json
[{
  "courseName": "Marketing Principles",
  "courseLevel": "Junior",
  "courseCode": "MKT 301",
  "account_id": 33,
  "college": "College of Business",
  "collegeCode": "COB",
  "department": "Marketing",
  "departmentCode": "MKT",
  "subdiscipline": null,
  "subdisciplineCode": null
}]
```

## 🏛️ Supported Colleges

- College of Business
- College of Computing
- College of Education
- College of Engineering
- College of Health Sciences
- College of Humanities
- College of Science
- College of Social Sciences
- College of the Arts
- College of the Environment
- Aloha University (Core)

## 🐳 Docker Deployment

### Build and Run
```bash
docker compose up -d --build
```

### Stop
```bash
docker compose down
```

### Health Check
```bash
curl http://localhost:3000/health
```

## 📝 Adding New Courses

To add new course suggestions, edit `courses.js`:

```javascript
const COURSE_SUGGESTIONS = [
    // Add new courses here
    {
        name: "New Course Name",
        code: "ABC 123",
        level: "Sophomore",
        college: "College of Business",
        department: "Marketing",
        subdiscipline: ""
    },
    // ... existing courses
];
```

## 🛠️ Technologies Used

- **HTML5** - Structure
- **Tailwind CSS** - Styling (via CDN)
- **Vanilla JavaScript** - Logic and interactivity
- **Nginx** - Static file serving (Docker)
- **n8n** - Automation workflow backend

## 📄 License

MIT License - Feel free to use and modify for your institution.

---

**Aloha University** - The world's first full-stack AI university 🌺
