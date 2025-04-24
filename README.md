# ShieldPtr-SPM

`ShieldPtr-SPM` is the Swift Package Manager version of the **Shield-Ptr SDK**, developed by [SHIELD](https://www.shield.com)

SHIELD delivers real-time device-based risk intelligence via an SDK callback on the frontend, allowing you to take action against malicious devices and block fraudulent users.
SHIELD offers SDKs for both Android and iOS mobile apps and supports a wide variety of integrations, such as Android Native, iOS Native, React Native, Flutter, Ionic, and Unity.
---

## Integrate the SDK

Shield-Ptr is compatible with **iOS 12 and above**, and is distributed as a binary SDK using **Swift Package Manager (SPM)**.

### Swift Package Manager

Add this to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/shield-ai-technology/shield-ptr-spm", branch: "main"),
```

### Xcode Integration

1. In Xcode, go to:  
   `File > Add Packages`
2. Enter the repository URL:  
   ```
   https://github.com/shield-ai-technology/shield-ptr-spm
   ```
3. Select the `main` branch or latest version tag (e.g. `1.5.49`).
4. Import in code using:

```swift
import ShieldFraud
```

> ✅ Ensure that you link `ShieldFraud` to your target in **Frameworks, Libraries, and Embedded Content**.

---

## Security Notice
We make **continuous enhancements** to our detection capabilities, including:
- New fraud detection logic
- Bug fixes and optimizations
- Security updates

> 🔄 **We strongly recommend using the latest SDK version** to stay protected against evolving fraud and abuse techniques.

---

## Request Access
To use Shield-Ptr in your application, please
[contact SHIELD for access](https://shield.com/request-demo)
---
## License

This SDK is proprietary and licensed by SHIELD.  
For full usage terms, visit: [here](https://shield.com/terms)
