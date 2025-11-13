# 🎉 Birthday Card - Quick Start

## ✅ Your Project is 100% Static - No Server Needed!

All Python code has been removed. This is now a pure HTML/CSS/JavaScript birthday card that works on any static hosting platform.

---

## 📁 Clean Folder Structure

```
hbd/
├── index.html                 # Your birthday card (edit this!)
├── photos/                    # Add 4 photos here
├── gifs/                      # Add 3 GIFs here
├── messages/                  # (Reference only - edit messages in index.html)
├── README.md                  # Main documentation
├── GITHUB_PAGES_GUIDE.md      # Detailed GitHub Pages guide
├── DEPLOYMENT_GUIDE.md        # All hosting options
└── deploy-to-github.sh        # Automated deployment script
```

---

## 🚀 3 Ways to Get Started

### 1️⃣ Test Locally (Instant!)
**Double-click `index.html`** - opens in your browser immediately!

### 2️⃣ Deploy to GitHub Pages (5 min)
```bash
git init
git add .
git commit -m "Birthday card"
git remote add origin https://github.com/YOUR_USERNAME/birthday-card.git
git push -u origin main
# Enable Pages in GitHub Settings
```

### 3️⃣ Drag & Drop to Netlify (2 min)
Go to [netlify.com](https://netlify.com) and drag the `hbd` folder. Done!

---

## ✏️ How to Customize

### 1. Add Your Photos
Put 4 photos in `photos/` folder:
- `photo1.jpg` (or .png)
- `photo2.jpg`
- `photo3.jpg`
- `photo4.jpg`

### 2. Add Your GIFs
Put 3 GIFs in `gifs/` folder:
- `gif1.gif`
- `gif2.gif`
- `gif3.gif`

Download from [GIPHY](https://giphy.com) or [Tenor](https://tenor.com)

### 3. Edit Messages
Open `index.html` and find:
- Line ~267: Message 1
- Line ~291: Message 2
- Line ~315: Message 3
- Line ~339: Message 4

Just replace the text!

### 4. Change Password
Line ~429 in `index.html`:
```javascript
const CORRECT_PASSWORD = '12311999';  // Change this
```

### 5. Update Friend's Name
Line ~240 in `index.html`:
```html
Happy Birthday, Bestie!  // Change "Bestie"
```

---

## 🔐 Default Settings

- **Password:** `12311999`
- **Friend's Name:** "Bestie"
- **Messages:** Sample text with emojis

---

## 📖 Documentation

- **README.md** - Complete guide with all features
- **GITHUB_PAGES_GUIDE.md** - Step-by-step GitHub Pages deployment
- **DEPLOYMENT_GUIDE.md** - All free hosting options (Netlify, Vercel, etc.)

---

## ✅ Checklist

Before deploying:
- [ ] Added 4 photos
- [ ] Added 3 GIFs
- [ ] Edited 4 messages
- [ ] Changed password
- [ ] Updated friend's name
- [ ] Tested locally (double-click index.html)

---

## 🎁 Ready to Deploy!

**Choose your platform:**
- **Easiest:** Netlify (drag & drop)
- **Most Popular:** GitHub Pages
- **Fastest:** Cloudflare Pages

All are **FREE forever**! 🎉

---

**Questions? Check the documentation files or just double-click `index.html` to see it in action!** 💖
