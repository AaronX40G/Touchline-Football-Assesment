# Touchline — AI Football Skill Analysis (Local MVP)

A local-first prototype for the non-AI modules of a football skill assessment platform. It includes player accounts, drill definitions, video submissions, SQLite persistence, manual coach assessments, score history, and a leaderboard. AI video analysis is intentionally not implemented and is labelled as planned.

## Requirements

- Node.js 20 or newer
- npm

## Run locally

1. Extract this folder on your laptop.
2. Make sure Node.js 20 or newer is installed.
3. Run `npm install` once (or double-click `INSTALL_DEPENDENCIES.bat` on Windows). This initial package setup requires an internet connection to download libraries; it does not upload your app data.
4. Run `npm run dev` (or double-click `START_TOUCHLINE.bat` on Windows).
5. Open `http://127.0.0.1:5173` in your browser.

After dependencies are installed, the application itself runs locally and does not need a cloud service. The UI uses system fonts, so it does not fetch fonts from the internet. Keep the terminal window open while using the app.

For a production-style local build, run `npm run build`, then `npm start` and open `http://127.0.0.1:3000`.

The frontend development server and API bind to loopback addresses, not a public network interface.

## Demo administrator

- Email: `admin@football.local`
- Password: `Admin123!`

This is a seeded demo account. Do not reuse these credentials in a real deployment. Create a normal player account using **Create account** to test the player flow. Sign out of the admin account and sign in with your player account to upload submissions.

## Local storage locations

- SQLite database: `data/football.db`
- Uploaded video files: `uploads/videos/`

These files are created/updated by the app and stay in this project folder. Back up both the database and video directory together. Do not delete them if you want to preserve submissions.

## Included functionality

- Sign up, sign in, and sign out; passwords are hashed before storage.
- Player profiles (position, age group, dominant foot).
- Drill catalogue.
- Local video file upload (MP4, MOV, WEBM, M4V, AVI; 250 MB limit).
- Player submission history and coach/admin review queue.
- Manual score entry for ball control, precision, speed, and technique/balance.
- Weighted score calculation: 40% control, 30% precision, 20% speed, 10% technique.
- Leaderboard based on each player's highest saved assessment score.
- Local admin player directory.

## Important prototype notes

- AI video analysis is not active. All scores are manually entered by the demo coach/admin and are not AI predictions.
- This is a local demonstration build, not production-ready authentication infrastructure. The default demo admin credentials and fallback session secret are for local testing only. Use a strong `SESSION_SECRET`, secure session storage, CSRF protections, stricter upload validation, backup policy, and a proper security review before real deployment.
- The application is intended for one local computer. Its SQLite database and uploaded videos are not synchronized across devices.
- Browser video playback depends on the video format/codec supported by the browser. MP4 with H.264 video is the safest demo option.

## Stack

- React + Vite frontend
- Node.js + Express backend
- SQLite through `better-sqlite3`
- Local disk upload storage via Multer
- Cookie session authentication with bcrypt password hashing
