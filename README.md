# 🎉 Interactive Birthday Card - GitHub Pages Ready!

A beautiful, modern, password-protected digital birthday card with photo memories and personalized messages - **100% static, no server needed!**

## ✨ What's New - GitHub Pages Version

This version is **100% static** and ready to deploy to GitHub Pages (or any static hosting)!

- ✅ **No server required** - Pure HTML/CSS/JavaScript
- ✅ **Messages embedded directly** in HTML for easy editing
- ✅ **Works on any static host** - GitHub Pages, Netlify, Vercel, etc.
- ✅ **Deploy in 5 minutes** - Simple and fast!

---

## 📁 Folder Structure

```
hbd/
├── index.html              # Main birthday card (100% static!)
├── photos/                 # 📸 Add your 4 photos here
│   ├── photo1.jpg/png
│   ├── photo2.jpg/png
│   ├── photo3.jpg/png
│   └── photo4.jpg/png
├── gifs/                   # 🎬 Add your 3 GIFs here
│   ├── gif1.gif
│   ├── gif2.gif
│   └── gif3.gif
└── GITHUB_PAGES_GUIDE.md   # � Deployment guide
```

---

## 🚀 Easiest Way: Deploy to GitHub Pages (5 Minutes!)

### Step 1: Add Your Content

1. **Add Photos** to `photos/` folder:
   - Name them: `photo1.jpg`, `photo2.jpg`, `photo3.jpg`, `photo4.jpg`
   - Or use .png format

2. **Add GIFs** to `gifs/` folder:
   - Name them: `gif1.gif`, `gif2.gif`, `gif3.gif`
   - Download from [GIPHY](https://giphy.com) or [Tenor](https://tenor.com)

3. **Edit Messages** directly in `index.html`:
   - Open `index.html` in any text editor
   - Find the sections with `id="message-1"`, `id="message-2"`, etc.
   - Replace the text with your personal messages
   - Keep the emojis or add your own! 🎉💖

4. **Change Password** (optional):
   - Open `index.html`
   - Find line ~429: `const CORRECT_PASSWORD = '12311999';`
   - Change to your desired password

5. **Update Friend's Name**:
   - Find line ~240: `Happy Birthday, Bestie!`
   - Change "Bestie" to your friend's name

### Step 2: Deploy to GitHub

```bash
# Navigate to folder
cd /Users/anshulshukla/pipelines/hbd

# Initialize Git (if not already done)
git init

# Add all files
git add .
git commit -m "Birthday card ready for deployment"

# Create repo on GitHub.com, then:
git remote add origin https://github.com/YOUR_USERNAME/birthday-card.git
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click **Save**

### Step 4: Share!

Your site will be live at:
```
https://YOUR_USERNAME.github.io/birthday-card/
```

🎉 **That's it!** Free forever, no server needed!

---

## 🎨 How to Customize Messages

### Option 1: Edit Directly in HTML (Easiest)

Open `index.html` and find these sections:

**Message 1** (around line 267):
```html
<div id="message-1" class="...">
Remember this moment? This is where our journey began! 🌈✨

Your text here...
</div>
```

**Message 2** (around line 291):
```html
<div id="message-2" class="...">
This photo captures one of my favorite moments with you! 🎊📸

Your text here...
</div>
```

And so on for messages 3 and 4!

### Option 2: Use Find & Replace

1. Open `index.html` in VS Code or any editor
2. Search for the current message text
3. Replace with your own message
4. Keep the emojis or add new ones!

---

## 💡 Alternative Static Hosting Options

### 1. **Netlify** (Drag & Drop!)
1. Go to [netlify.com](https://netlify.com)
2. Drag the entire `hbd` folder onto their site
3. Done! Get instant URL

### 2. **Vercel**
```bash
npx vercel
```

### 3. **Cloudflare Pages**
1. Go to [pages.cloudflare.com](https://pages.cloudflare.com)
2. Connect GitHub repo
3. Deploy!

---

## 🔄 How to Update After Deployment

Made changes? Just push to GitHub:

```bash
git add .
git commit -m "Updated photos and messages"
git push
```

Changes go live in ~1 minute!

---

## 🧪 Test Locally First

Just **double-click `index.html`** to open it in your browser!

Or use a simple server:
```bash
# Simple HTTP server
python3 -m http.server 8000
# Visit: http://localhost:8000
```

---

## 🔐 Default Password

**Password:** `12311999`

**To change:** Edit line ~429 in `index.html`
```javascript
const CORRECT_PASSWORD = 'YOUR_PASSWORD';
```

---

## 📝 Complete Checklist

- [ ] Add 4 photos to `photos/` folder (photo1-4.jpg/png)
- [ ] Add 3 GIFs to `gifs/` folder (gif1-3.gif)
- [ ] Edit messages in `index.html`
- [ ] Change friend's name in `index.html`
- [ ] Change password (optional)
- [ ] Test locally (double-click index.html)
- [ ] Push to GitHub
- [ ] Enable GitHub Pages
- [ ] Test live site
- [ ] Share the link! 🎁

---

## 🆘 Troubleshooting

**Photos not showing?**
- Check file names: `photo1.jpg`, `photo2.jpg`, etc.
- Try both .jpg and .png
- Make sure they're in the `photos/` folder

**GIFs not animating?**
- Ensure files are actually .gif format
- Check file names: `gif1.gif`, `gif2.gif`, `gif3.gif`
- Download from GIPHY or Tenor for guaranteed animated GIFs

**Site not loading on GitHub Pages?**
- Wait 2-3 minutes after enabling Pages
- Check `index.html` is in the root folder
- Make sure Pages is enabled in Settings

---

## 📚 Documentation

- **GitHub Pages Guide:** See `GITHUB_PAGES_GUIDE.md`
- **All Deployment Options:** See `DEPLOYMENT_GUIDE.md`

---

## 🎁 What's Included

✨ **6 Beautiful Pages:**
1. Password-protected envelope lock screen
2. Welcome page with GIFs
3-6. Four photo memory pages with messages
7. Final heartfelt letter

🎨 **Features:**
- Smooth animations and transitions
- Fully responsive (mobile-friendly)
- Password protection
- Custom messages with emojis
- Photo galleries
- Celebration GIFs

---

## 📱 Mobile Friendly

Works perfectly on:
- 📱 iPhone & Android
- 💻 Desktop & Laptop
- 📱 Tablets
- All modern browsers

---

## 🌟 Quick Deploy Commands

```bash
# Clone/navigate to folder
cd /Users/anshulshukla/pipelines/hbd

# Add your photos and GIFs first!

# Deploy to GitHub
git init
git add .
git commit -m "Birthday card"
git remote add origin https://github.com/YOUR_USERNAME/birthday-card.git
git push -u origin main

# Enable Pages on GitHub.com (Settings → Pages)
# Visit: https://YOUR_USERNAME.github.io/birthday-card/
```

---

**🎉 Your birthday card is ready to share!**

**Live in:** ~10 minutes  
**Cost:** $0 (FREE forever!)  
**Server:** Not needed!  
**Love:** Priceless! 💖

---

Happy Birthday! 🎂✨🎊
