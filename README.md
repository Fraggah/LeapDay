# Leap Day

<img width="1920" height="1080" alt="leapday" src="https://github.com/user-attachments/assets/896470c0-64f1-43cb-9da4-752eb17deca1" />

**Genre:** Vertical Platformer  
**Engine:** Godot Engine (GDScript)  
**Platform:** Mobile (Android)  

Leap Day is a mobile vertical platformer inspired by LeapNight, built to deliver tight, responsive controls and a smooth player movement experience. The project focuses on precise input handling, collision accuracy, and consistent feel across mobile devices.

---

## 🎮 Technical Features

- **Precision movement system**: Frame-consistent jump arcs and horizontal movement using physics-based motion with tuned gravity and acceleration curves.
- **Responsive mobile controls**: Touch input mapped to virtual buttons and swipe gestures, with debounce logic to prevent misreads.
- **Camera follow & smoothing**: Vertical camera tracking with predictive look-ahead to anticipate player jumps.
- **Obstacle design tools**: Custom scene setup for quick creation of platforms, hazards, and checkpoints.
- **Optimized for mobile performance**: Minimal draw calls, sprite batching, and lightweight collision shapes.
- **Checkpoint system**: Allows resuming from the last reached platform after falling.

---

## 🛠 Technical Challenges & Solutions

- **Issue:** Input lag on some mobile devices causing delayed jumps.  
  **Solution:** Implemented direct polling of input in `_physics_process()` instead of relying on default input event buffering.

- **Issue:** Collision jitter when landing on moving platforms.  
  **Solution:** Replaced default collision resolution with kinematic movement interpolation to stabilize landing detection.

- **Issue:** Camera overshooting during fast consecutive jumps.  
  **Solution:** Added velocity-based dampening to the camera follow algorithm.

---
