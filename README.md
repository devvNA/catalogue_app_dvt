# Product Catalog App

Aplikasi katalog produk berbasis Flutter yang menampilkan daftar produk dari API, dengan fitur pencarian, infinite scroll, dan keranjang belanja yang persisten menggunakan local storage.

## 📱 Deskripsi

Product Catalog App adalah aplikasi mobile e-commerce sederhana yang dibangun dengan Flutter menggunakan Clean Architecture dan BLoC pattern untuk state management. Aplikasi ini mengambil data produk dari [FakeStore API](https://fakestoreapi.com) dan menyediakan pengalaman belanja yang smooth dengan loading states yang elegan dan error handling yang robust.

## ✨ Fitur Utama

### F-01: Product List
- Menampilkan daftar produk dalam grid 2 kolom
- Menampilkan gambar, nama, dan harga produk
- **Infinite Scroll** - Otomatis memuat produk baru saat scroll ke bawah
- **Pull to Refresh** - Refresh data dengan gesture swipe down
- **Skeleton Loading** - Loading state dengan shimmer effect yang modern

### F-02: Product Detail
- Menampilkan detail lengkap produk (gambar besar, nama, harga, deskripsi, kategori, rating)
- Hero animation untuk transisi gambar yang smooth
- Tombol "Add to Cart" untuk menambahkan produk ke keranjang

### F-03: Product Search
- Search bar dengan debounce (500ms) untuk menghindari request berlebihan
- Filter produk secara real-time berdasarkan nama
- Menampilkan hasil pencarian dengan layout yang konsisten

### F-04: Cart (Keranjang Belanja)
- Menyimpan produk ke keranjang dengan SharedPreferences
- Data keranjang **persisten** (tidak hilang saat aplikasi ditutup)
- Auto-increment quantity saat menambahkan produk yang sama
- Cart badge menampilkan total quantity semua items
- SnackBar feedback saat menambahkan produk

## 🏗️ Arsitektur

Aplikasi ini dibangun menggunakan **Clean Architecture** dengan 3 layer utama:

### 1. Domain Layer (Pure Dart)
- **Entities**: Model bisnis core (`Product`, `CartItem`)
- **Repositories**: Interface kontrak untuk data operations
- **Use Cases**: Business logic aplikasi
  - `GetProducts` - Mengambil daftar produk dengan pagination
  - `GetProductDetail` - Mengambil detail produk by ID
  - `SearchProducts` - Mencari produk berdasarkan query
  - `AddToCart` - Menambahkan produk ke keranjang
  - `GetCartItems` - Mengambil daftar item di keranjang

### 2. Data Layer
- **Models**: DTO dengan Freezed untuk immutability dan code generation
- **Data Sources**:
  - `Remote` - API calls menggunakan Dio
  - `Local` - Cart storage menggunakan SharedPreferences
- **Repository Implementation**: Implementasi konkret dengan `Either<Failure, Success>` untuk error handling

### 3. Presentation Layer
- **Pages**: Screen UI (`ProductListPage`, `ProductDetailPage`)
- **Widgets**: Reusable components (ProductCard, LoadingWidget, ErrorWidget)
- **BLoC**: State management dengan flutter_bloc + Freezed
  - Events (LoadProducts, SearchProducts, AddToCart, dll)
  - States (Loading, Loaded, Error, Searching, dll)

## 📦 Package Dependencies

### Core Dependencies
```yaml
# State Management
flutter_bloc: ^8.1.3       # BLoC pattern untuk state management
equatable: ^2.0.5           # Value equality untuk models

# Code Generation
freezed_annotation: ^2.4.1  # Annotations untuk Freezed
json_annotation: ^4.8.1     # JSON serialization

# Networking
dio: ^5.4.0                 # HTTP client untuk API calls

# Functional Programming
dartz: ^0.10.1              # Either type untuk error handling

# Dependency Injection
get_it: ^7.6.4              # Service locator
injectable: ^2.3.2          # Code generation untuk DI

# Local Storage
shared_preferences: ^2.2.2  # Persistent key-value storage
```

### Dev Dependencies
```yaml
# Code Generation
build_runner: ^2.4.6        # Build system
freezed: ^2.4.5             # Union types & immutability
json_serializable: ^6.7.1   # JSON serialization
injectable_generator: ^2.4.1 # DI code generation
```

## 🚀 Cara Menjalankan Aplikasi

### Prerequisites
Pastikan sudah menginstall:
- Flutter SDK (3.3 atau lebih tinggi)
- Dart SDK (3.0 atau lebih tinggi)
- Android Studio / VS Code
- Android Emulator atau Physical Device

### Langkah-langkah

1. **Clone atau Extract Project**
   ```bash
   cd catalog_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate Code (Freezed & JSON)**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Jalankan Aplikasi**
   ```bash
   flutter run
   ```

   Atau untuk mode release:
   ```bash
   flutter run --release
   ```

### Troubleshooting

#### Jika terjadi error saat generate code:
```bash
# Clean build cache
flutter clean
flutter pub get
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

#### Jika terjadi masalah dengan dependencies:
```bash
# Update dependencies
flutter pub upgrade
```

## 📁 Struktur Project

```
lib/
├── core/
│   ├── constants/          # Konstanta aplikasi
│   ├── di/                 # Dependency injection setup
│   ├── error/              # Error handling (Failures, Exceptions)
│   └── utils/              # Helper functions
├── data/
│   ├── datasources/
│   │   ├── local/          # Local storage (SharedPreferences)
│   │   └── remote/         # API calls (Dio)
│   ├── models/             # DTOs dengan Freezed
│   └── repositories/       # Repository implementations
├── domain/
│   ├── entities/           # Business models
│   ├── repositories/       # Repository interfaces
│   └── usecases/           # Business logic
└── presentation/
    ├── bloc/               # BLoC (Events, States, Logic)
    ├── pages/              # Screen pages
    └── widgets/            # Reusable UI components
```

## 🧪 Testing

Untuk menjalankan analisis code:
```bash
flutter analyze
```

## 🎨 UI/UX Features

- **Material Design 3** - Modern UI dengan Material 3 components
- **Shimmer Loading** - Skeleton screens dengan shimmer effect
- **Hero Animations** - Smooth transitions antar halaman
- **Responsive Grid** - Auto-adjust layout untuk berbagai ukuran layar
- **Error States** - User-friendly error messages dengan retry button
- **Empty States** - Informative empty state illustrations
- **SnackBar Feedback** - Visual feedback untuk user actions

## 📊 API Integration

**Base URL**: `https://fakestoreapi.com`

**Endpoints**:
- `GET /products` - Fetch product list
- `GET /products/{id}` - Fetch product detail

## 🔒 Error Handling

Aplikasi mengimplementasikan comprehensive error handling:
- **ServerFailure** - Server errors (5xx)
- **ConnectionFailure** - Network errors
- **CacheFailure** - Local storage errors

Setiap error ditangani dengan:
- User-friendly error messages
- Retry mechanisms
- Logging untuk debugging

## 👨‍💻 Development

**State Management Flow**:
```
UI Event → BLoC Event → Use Case → Repository → Data Source → API/Storage
                                                                    ↓
UI Update ← BLoC State ← Either<Failure, Success> ← Repository ← Response
```

**Tech Stack**:
- Flutter 3.32.7
- Dart 3.8.1
- Clean Architecture
- BLoC Pattern
- Freezed (Union Types)
- Dartz (Functional Programming)

## 📝 License

This project is created for evaluation purposes.

## 📧 Contact

For any questions or issues, please contact the development team.

---

**Built with ❤️ using Flutter**
