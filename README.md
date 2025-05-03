# Continente App – QR Code Voice Reader Accessibility Feature (Prototype Version)

## Overview

This document describes a **prototype version** of a new accessibility feature for the official Continente mobile application. The new feature enhances the shopping experience for visually impaired customers by enabling voice playback of product details after scanning a QR code. **This prototype uses mocked product data instead of real API/database integration.**

## Feature Name

**Leitor de QR Code com Leitura em Voz Alta (Protótipo)** / **QR Code Voice Reader (Prototype)**

---

## Goals

* Improve accessibility for visually impaired users
* Provide a seamless, voice-enabled experience for product discovery
* Integrate smoothly into the Continente app UI/UX
* Deliver a fully functional mock prototype without needing external APIs or databases

---

## Implementation

This prototype is implemented as a cross-platform application that can run on:
- Android (8+)
- iOS (13+)
- Web browsers (for easy demonstration)

### Running the Web Version

1. Install dependencies:
   ```
   # For Windows
   ./install-web-dependencies.bat
   
   # For Mac/Linux
   chmod +x ./install-web-dependencies.sh
   ./install-web-dependencies.sh
   ```

2. Start the web server:
   ```
   npm run web
   ```

3. Open your browser to http://localhost:3000

### Running on Mobile

Follow standard React Native setup and run:
```
npm run android
# or
npm run ios  # Mac only
```

---

## User Journey

1. **User opens the Continente app**
2. Navigates to the "QR Code Voice Reader" feature
3. The camera screen appears simulating a QR scan
4. A loading message appears: **"A obter informações do produto..."** ("Retrieving product information...")
5. After a 5-second delay, the mock product is shown and read aloud
6. A button labeled **"Repetir Descrição"** is displayed, enabling users to replay the spoken content

---

## Functional Requirements (Prototype)

### QR Code Scanner (Simulated)

* Launches the device camera interface
* Displays visual overlay for scan zone
* No real QR code detection — instead:

  * Automatically triggers a mocked result after 5 seconds
  * Shows message during delay: **"A obter informações do produto..."**
  * After delay, proceed as if a product was successfully identified

### Mock Product Information

* Hardcoded in the prototype as:

  * **Nome do produto**: Bolachas com Pepitas de Chocolate Milka
  * **Descrição**: 4 pacotes de 3 bolachas cada
  * **Preço**: 2,49€
* Voice Output Example:

  > "Pacote de bolachas com pepitas de chocolate Milka, 4 pacotes de 3 bolachas cada, dois euros e quarenta e nove cêntimos."

### Voice Playback

* Uses built-in TTS (Text-to-Speech) engine:
  * Native TTS on mobile devices
  * Speech Synthesis API on web browsers
* Language: Portuguese (Portugal)
* Starts automatically after 5-second delay
* Repeatable via the **"Repetir Descrição"** button

### Replay Button

* Centered at the bottom
* Icon: speaker with sound waves
* Label: **"Repetir Descrição"**
* Accessible and responsive
* Repeats the mock product's voice description

### Offline Support

* Not needed for prototype (all data is local)
* If implemented, display a message: "Sem ligação à internet" (if necessary for flow realism)

### Accessibility

* Compatible with VoiceOver and TalkBack on mobile
* Compatible with browser screen readers on web
* High contrast UI
* All UI elements labeled for screen readers

---

## UI Design Requirements

### Design Consistency

* Reuse Continente app styles:

  * Colors (e.g. #E30613 for red)
  * Fonts and icons
  * Button shapes and spacing

### Layout Structure

```
--------------------------------------------------
|               Continente Header Bar           |
--------------------------------------------------
|             [ Live Camera Feed ]              |
|     + "A obter informações do produto..."     |
--------------------------------------------------
|   Produto: Bolachas com Pepitas de Chocolate |
|   Descrição: 4 pacotes de 3 bolachas cada     |
|   Preço: 2,49€                                |
--------------------------------------------------
|          [ Repetir Descrição Button ]         |
--------------------------------------------------
```

---

## Technical Specifications (Prototype)

### Platform Support

* Android 8+
* iOS 13+

### Dependencies

* Native TTS
* Camera access library
* No network or API dependencies

### Data Privacy & Security

* No personal data used
* No network requests made

---

## Stretch Goals (Beyond Prototype)

* Support scanning multiple products
* Add real-time API integration
* Include loyalty program awareness

---

## Testing and Validation

* Usability testing for button layout, speech clarity, and timing
* Testing loading message timing (5s) and feedback
* Accessibility validation

---

## Conclusion

This prototype offers a lightweight, fully self-contained version of the QR Code Voice Reader feature. It showcases the intended functionality and accessibility flow without the need for API integration, making it ideal for early demonstrations and user feedback collection.

---

## Appendix

* Voice message script for mock product
* Mock camera overlay visuals
* TTS configuration sample (pt-PT) 