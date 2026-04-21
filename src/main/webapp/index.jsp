<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Nexus Shop — Premium E-Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --gradient-1: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --gradient-2: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            --gradient-3: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
            --dark: #0f172a;
            --light: #f8fafc;
            --primary: #3b82f6;
            --secondary: #8b5cf6;
            --accent: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --muted: #64748b;
            --surface: #ffffff;
            --card-bg: rgba(255, 255, 255, 0.95);
            --shadow-sm: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            --shadow-md: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
            --radius-lg: 20px;
            --radius-md: 12px;
            --radius-sm: 8px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background: var(--light);
            color: var(--dark);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Header Redesign */
        header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.1);
            padding: 1rem 0;
        }

        .header-container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 2rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 1.5rem;
            background: var(--gradient-1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-decoration: none;
        }

        .logo-badge {
            background: var(--gradient-1);
            color: white;
            padding: 0.25rem 0.5rem;
            border-radius: var(--radius-sm);
            font-size: 0.75rem;
            font-weight: 600;
        }

        /* Navigation */
        .nav-main {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-link {
            position: relative;
            color: var(--dark);
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 0;
            transition: color 0.3s ease;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--gradient-1);
            transition: width 0.3s ease;
        }

        .nav-link:hover {
            color: var(--primary);
        }

        .nav-link:hover::after {
            width: 100%;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        /* Search Bar */
        .search-container {
            position: relative;
            width: 300px;
        }

        .search-input {
            width: 100%;
            padding: 0.75rem 1rem 0.75rem 3rem;
            border: 2px solid #e2e8f0;
            border-radius: var(--radius-md);
            font-size: 0.875rem;
            transition: all 0.3s ease;
            background: white;
        }

        .search-input:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--muted);
        }

        /* Action Buttons */
        .action-btn {
            position: relative;
            background: white;
            border: 2px solid #e2e8f0;
            border-radius: var(--radius-sm);
            padding: 0.5rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .action-btn:hover {
            border-color: var(--primary);
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .cart-badge {
            position: absolute;
            top: -0.5rem;
            right: -0.5rem;
            background: var(--danger);
            color: white;
            font-size: 0.75rem;
            font-weight: 600;
            width: 1.25rem;
            height: 1.25rem;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        /* Hero Section */
        .hero {
            min-height: 100vh;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 4rem;
            padding: 6rem 2rem;
            background: var(--gradient-1);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 100%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 1px, transparent 1px);
            background-size: 50px 50px;
            opacity: 0.1;
            animation: float 20s linear infinite;
        }

        @keyframes float {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .hero-content {
            z-index: 1;
            color: white;
        }

        .hero-title {
            font-family: 'Poppins', sans-serif;
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        .hero-subtitle {
            font-size: 1.125rem;
            opacity: 0.9;
            margin-bottom: 2rem;
            max-width: 500px;
        }

        .cta-buttons {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 0.875rem 2rem;
            border-radius: var(--radius-md);
            font-weight: 600;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            transition: all 0.3s ease;
            cursor: pointer;
            border: none;
        }

        .btn-primary {
            background: white;
            color: var(--dark);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .btn-secondary {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        .btn-secondary:hover {
            border-color: white;
            background: rgba(255, 255, 255, 0.1);
        }

        .hero-visual {
            position: relative;
            height: 100%;
        }

        .product-showcase {
            position: relative;
            height: 400px;
            width: 100%;
        }

        .product-card {
            position: absolute;
            background: white;
            border-radius: var(--radius-lg);
            padding: 1.5rem;
            box-shadow: var(--shadow-lg);
            transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .product-card:nth-child(1) {
            top: 0;
            left: 0;
            transform: rotate(-5deg);
        }

        .product-card:nth-child(2) {
            top: 30%;
            right: 0;
            transform: rotate(3deg);
        }

        .product-card:nth-child(3) {
            bottom: 0;
            left: 20%;
            transform: rotate(-2deg);
        }

        .product-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: var(--radius-sm);
            margin-bottom: 1rem;
        }

        /* Categories Section */
        .section {
            padding: 5rem 2rem;
            max-width: 1280px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            background: var(--gradient-1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .section-subtitle {
            text-align: center;
            color: var(--muted);
            margin-bottom: 3rem;
            font-size: 1.125rem;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .category-card {
            background: var(--surface);
            border-radius: var(--radius-lg);
            padding: 2rem;
            text-align: center;
            text-decoration: none;
            color: var(--dark);
            transition: all 0.3s ease;
            border: 1px solid #e2e8f0;
        }

        .category-card:hover {
            transform: translateY(-10px);
            border-color: var(--primary);
            box-shadow: var(--shadow-lg);
        }

        .category-icon {
            width: 64px;
            height: 64px;
            margin: 0 auto 1rem;
            background: var(--gradient-2);
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 1.5rem;
            color: white;
        }

        /* Products Section */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .product-item {
            background: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            transition: all 0.3s ease;
            position: relative;
        }

        .product-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--gradient-2);
            color: white;
            padding: 0.25rem 0.75rem;
            border-radius: var(--radius-sm);
            font-size: 0.75rem;
            font-weight: 600;
            z-index: 2;
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-content {
            padding: 1.5rem;
        }

        .product-title {
            font-weight: 600;
            margin-bottom: 0.5rem;
            font-size: 1.125rem;
        }

        .product-category {
            color: var(--muted);
            font-size: 0.875rem;
            margin-bottom: 1rem;
        }

        .product-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 1rem;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 1rem;
            margin-left: 0.5rem;
        }

        .product-actions {
            display: flex;
            gap: 0.5rem;
        }

        .add-to-cart {
            flex: 1;
            background: var(--gradient-1);
            color: white;
            border: none;
            padding: 0.75rem;
            border-radius: var(--radius-sm);
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .add-to-cart:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }

        .wishlist-btn {
            background: white;
            border: 2px solid #e2e8f0;
            border-radius: var(--radius-sm);
            padding: 0.75rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .wishlist-btn:hover {
            border-color: var(--danger);
            color: var(--danger);
        }

        /* Deals Section */
        .deal-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            margin: 3rem 0;
        }

        .deal-content {
            padding: 3rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .deal-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .deal-price {
            font-size: 3rem;
            font-weight: 800;
            margin: 1.5rem 0;
        }

        .deal-timer {
            display: flex;
            gap: 1rem;
            margin: 2rem 0;
        }

        .timer-unit {
            display: flex;
            flex-direction: column;
            align-items: center;
            min-width: 80px;
        }

        .timer-value {
            font-size: 2rem;
            font-weight: 700;
            background: rgba(255, 255, 255, 0.1);
            padding: 1rem;
            border-radius: var(--radius-md);
            width: 100%;
            text-align: center;
        }

        .timer-label {
            font-size: 0.875rem;
            opacity: 0.8;
            margin-top: 0.5rem;
        }

        /* Testimonials */
        .testimonials-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .testimonial-card {
            background: white;
            border-radius: var(--radius-lg);
            padding: 2rem;
            box-shadow: var(--shadow-md);
            transition: transform 0.3s ease;
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
        }

        .testimonial-rating {
            color: var(--warning);
            font-size: 1.25rem;
            margin-bottom: 1rem;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .author-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter-section {
            background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
            color: white;
            border-radius: var(--radius-lg);
            padding: 4rem 2rem;
            text-align: center;
        }

        .newsletter-form {
            max-width: 500px;
            margin: 2rem auto 0;
            display: flex;
            gap: 1rem;
        }

        .newsletter-input {
            flex: 1;
            padding: 1rem 1.5rem;
            border: none;
            border-radius: var(--radius-md);
            font-size: 1rem;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 4rem 2rem 2rem;
            margin-top: 4rem;
        }

        .footer-content {
            max-width: 1280px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 3rem;
        }

        .footer-logo {
            font-family: 'Poppins', sans-serif;
            font-size: 1.5rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .social-link {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            display: grid;
            place-items: center;
            transition: all 0.3s ease;
        }

        .social-link:hover {
            background: var(--primary);
            transform: translateY(-3px);
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .cta-buttons {
                justify-content: center;
            }

            .deal-content {
                grid-template-columns: 1fr;
                text-align: center;
            }
        }

        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 1rem;
            }

            .nav-main {
                flex-wrap: wrap;
                justify-content: center;
            }

            .search-container {
                width: 100%;
            }

            .section {
                padding: 3rem 1rem;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .product-card {
                position: relative;
                margin-bottom: 1rem;
            }
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .fade-in {
            animation: fadeIn 0.6s ease forwards;
        }

        .animated {
            opacity: 0;
        }

        /* Loading States */
        .loading {
            position: relative;
            overflow: hidden;
        }

        .loading::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            animation: loading 1.5s infinite;
        }

        @keyframes loading {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }

        /* Micro-interactions */
        .scale-on-hover {
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .scale-on-hover:hover {
            transform: scale(1.05);
        }

        .pulse-on-hover:hover {
            animation: pulse 0.6s ease;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <a href="#" class="logo">
                <svg width="32" height="32" viewBox="0 0 24 24" fill="none" xmlns="[w3.org](http://www.w3.org/2000/svg)">
                    <path d="M12 2L2 7L12 12L22 7L12 2Z" stroke="url(#grad1)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M12 22L22 17L12 12L2 17L12 22Z" stroke="url(#grad1)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <defs>
                        <linearGradient id="grad1" x1="2" y1="2" x2="22" y2="22" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#667eea"/>
                            <stop offset="1" stop-color="#764ba2"/>
                        </linearGradient>
                    </defs>
                </svg>
                NEXUS<span class="logo-badge">PRO</span>
            </a>
            
            <nav class="nav-main">
                <a href="#" class="nav-link">Home</a>
                <a href="#categories" class="nav-link">Categories</a>
                <a href="#products" class="nav-link">Products</a>
                <a href="#deals" class="nav-link">Deals</a>
                <a href="#testimonials" class="nav-link">Reviews</a>
            </nav>
            
            <div class="nav-actions">
                <div class="search-container">
                    <i class="fas fa-search search-icon"></i>
                    <input type="search" class="search-input" placeholder="Search products..." id="searchInput">
                </div>
                
                <button class="action-btn" title="Account">
                    <i class="fas fa-user"></i>
                </button>
                
                <button class="action-btn" title="Wishlist">
                    <i class="fas fa-heart"></i>
                </button>
                
                <button class="action-btn" title="Cart" id="cartBtn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-badge" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <main>
        <section class="hero fade-in">
            <div class="hero-content">
                <h1 class="hero-title">
                    Elevate Your<br>
                    Shopping Experience
                </h1>
                <p class="hero-subtitle">
                    Discover premium products curated for the modern lifestyle. 
                    Exclusive collections, sustainable materials, and exceptional quality.
                </p>
                <div class="cta-buttons">
                    <button class="btn btn-primary" id="shopNow">
                        <i class="fas fa-shopping-cart"></i> Shop Now
                    </button>
                    <button class="btn btn-secondary" id="exploreDeals">
                        <i class="fas fa-tag"></i> View Deals
                    </button>
                </div>
                
                <div class="hero-stats" style="margin-top: 3rem; display: flex; gap: 2rem;">
                    <div>
                        <div style="font-size: 2rem; font-weight: 700;">10K+</div>
                        <div style="opacity: 0.8;">Premium Products</div>
                    </div>
                    <div>
                        <div style="font-size: 2rem; font-weight: 700;">4.9/5</div>
                        <div style="opacity: 0.8;">Customer Rating</div>
                    </div>
                    <div>
                        <div style="font-size: 2rem; font-weight: 700;">24h</div>
                        <div style="opacity: 0.8;">Fast Shipping</div>
                    </div>
                </div>
            </div>
            
            <div class="hero-visual">
                <div class="product-showcase">
                    <div class="product-card">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)" alt="Premium Smartphone">
                        <h4 style="font-weight: 600;">iPhone 14 Pro</h4>
                        <div style="color: var(--primary); font-weight: 700;">$999</div>
                    </div>
                    <div class="product-card">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)" alt="MacBook Pro">
                        <h4 style="font-weight: 600;">MacBook Pro</h4>
                        <div style="color: var(--primary); font-weight: 700;">$1999</div>
                    </div>
                    <div class="product-card">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80)" alt="Smart Watch">
                        <h4 style="font-weight: 600;">Apple Watch</h4>
                        <div style="color: var(--primary); font-weight: 700;">$349</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="section fade-in" id="categories">
            <h2 class="section-title">Shop by Category</h2>
            <p class="section-subtitle">Browse our curated collections across premium categories</p>
            
            <div class="categories-grid" id="categoriesGrid">
                <!-- Categories will be dynamically inserted here -->
            </div>
        </section>

        <!-- Products Section -->
        <section class="section fade-in" id="products">
            <h2 class="section-title">Trending Now</h2>
            <p class="section-subtitle">Discover what everyone's loving right now</p>
            
            <div class="products-grid" id="productsGrid">
                <!-- Products will be dynamically inserted here -->
            </div>
        </section>

        <!-- Deals Section -->
        <section class="deal-section fade-in" id="deals">
            <div class="deal-content">
                <div>
                    <div style="background: rgba(255,255,255,0.1); display: inline-block; padding: 0.5rem 1rem; border-radius: var(--radius-sm); margin-bottom: 1rem;">
                        FLASH SALE
                    </div>
                    <h2 class="deal-title">MacBook Air M2</h2>
                    <p style="opacity: 0.9; margin-bottom: 1.5rem;">
                        Thin, light, and powerful. The ultimate productivity companion with M2 performance.
                    </p>
                    
                    <div class="deal-price">
                        $999 <span style="font-size: 1.5rem; opacity: 0.7; text-decoration: line-through;">$1199</span>
                        <span style="background: white; color: var(--danger); padding: 0.25rem 0.75rem; border-radius: var(--radius-sm); font-size: 1rem; margin-left: 1rem;">
                            -17%
                        </span>
                    </div>
                    
                    <div class="deal-timer" id="dealTimer">
                        <div class="timer-unit">
                            <div class="timer-value" id="days">00</div>
                            <div class="timer-label">DAYS</div>
                        </div>
                        <div class="timer-unit">
                            <div class="timer-value" id="hours">00</div>
                            <div class="timer-label">HOURS</div>
                        </div>
                        <div class="timer-unit">
                            <div class="timer-value" id="minutes">00</div>
                            <div class="timer-label">MINUTES</div>
                        </div>
                        <div class="timer-unit">
                            <div class="timer-value" id="seconds">00</div>
                            <div class="timer-label">SECONDS</div>
                        </div>
                    </div>
                    
                    <div style="margin-top: 2rem; display: flex; gap: 1rem;">
                        <button class="btn btn-primary" id="buyDeal" style="background: white; color: var(--dark);">
                            <i class="fas fa-bolt"></i> Buy Now
                        </button>
                        <button class="btn btn-secondary" style="background: transparent; border: 2px solid white;">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                        </button>
                    </div>
                </div>
                
                <div>
                    <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80)" 
                         alt="MacBook Air M2" 
                         style="width: 100%; border-radius: var(--radius-md); box-shadow: var(--shadow-lg);">
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section fade-in" id="testimonials">
            <h2 class="section-title">Customer Stories</h2>
            <p class="section-subtitle">Hear from our satisfied customers worldwide</p>
            
            <div class="testimonials-container">
                <div class="testimonial-card">
                    <div class="testimonial-rating">
                        ★★★★★
                    </div>
                    <p style="font-style: italic;">
                        "The shopping experience was seamless from start to finish. Products arrived earlier than expected and the quality exceeded my expectations. Will definitely shop here again!"
                    </p>
                    <div class="testimonial-author">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80)" 
                             alt="Customer" 
                             class="author-avatar">
                        <div>
                            <div style="font-weight: 600;">Sarah Johnson</div>
                            <div style="opacity: 0.7; font-size: 0.875rem;">Verified Buyer</div>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="testimonial-rating">
                        ★★★★★
                    </div>
                    <p style="font-style: italic;">
                        "Exceptional customer service and premium products. The attention to detail in packaging and delivery shows they truly care about their customers. 10/10 recommend!"
                    </p>
                    <div class="testimonial-author">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80)" 
                             alt="Customer" 
                             class="author-avatar">
                        <div>
                            <div style="font-weight: 600;">Michael Chen</div>
                            <div style="opacity: 0.7; font-size: 0.875rem;">Frequent Shopper</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="newsletter-section fade-in">
            <h2 style="font-size: 2.5rem; margin-bottom: 1rem;">Stay Connected</h2>
            <p style="opacity: 0.9; max-width: 600px; margin: 0 auto;">
                Subscribe to our newsletter for exclusive deals, new arrivals, and member-only offers.
            </p>
            
            <form class="newsletter-form" id="newsletterForm">
                <input type="email" 
                       class="newsletter-input" 
                       placeholder="Enter your email address" 
                       id="newsletterEmail"
                       required>
                <button type="submit" 
                        class="btn btn-primary" 
                        style="background: var(--gradient-1); border: none;">
                    <i class="fas fa-paper-plane"></i> Subscribe
                </button>
            </form>
            
            <div id="newsletterMsg" style="margin-top: 1rem; display: none;"></div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="fade-in">
        <div class="footer-content">
            <div>
                <div class="footer-logo">
                    NEXUS SHOP
                </div>
                <p style="opacity: 0.8; margin-bottom: 1.5rem;">
                    Redefining online shopping with premium products and exceptional service since 2023.
                </p>
                <div class="social-links">
                    <a href="#" class="social-link">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-link">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-link">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" class="social-link">
                        <i class="fab fa-pinterest"></i>
                    </a>
                </div>
            </div>
            
            <div>
                <h3 style="margin-bottom: 1.5rem;">Company</h3>
                <ul style="list-style: none; opacity: 0.8;">
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">About Us</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Careers</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Press</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Blog</a></li>
                </ul>
            </div>
            
            <div>
                <h3 style="margin-bottom: 1.5rem;">Support</h3>
                <ul style="list-style: none; opacity: 0.8;">
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Help Center</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Shipping Info</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Returns</a></li>
                    <li style="margin-bottom: 0.75rem;"><a href="#" style="color: white; text-decoration: none;">Contact Us</a></li>
                </ul>
            </div>
            
            <div>
                <h3 style="margin-bottom: 1.5rem;">Contact</h3>
                <div style="opacity: 0.8;">
                    <p style="margin-bottom: 0.75rem;">
                        <i class="fas fa-envelope" style="margin-right: 0.5rem;"></i>
                        support@nexusshop.com
                    </p>
                    <p style="margin-bottom: 0.75rem;">
                        <i class="fas fa-phone" style="margin-right: 0.5rem;"></i>
                        +1 (555) 123-4567
                    </p>
                    <p>
                        <i class="fas fa-map-marker-alt" style="margin-right: 0.5rem;"></i>
                        123 Commerce Street, San Francisco, CA
                    </p>
                </div>
            </div>
        </div>
        
        <div style="text-align: center; margin-top: 3rem; padding-top: 2rem; border-top: 1px solid rgba(255,255,255,0.1); opacity: 0.7;">
            <p>&copy; <span id="currentYear">2023</span> Nexus Shop. All rights reserved.</p>
        </div>
    </footer>

    <script>
        // Data
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', color: '#667eea' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', color: '#764ba2' },
            { id: 'audio', name: 'Audio', icon: 'fa-headphones', color: '#f093fb' },
            { id: 'wearables', name: 'Wearables', icon: 'fa-watch', color: '#4facfe' },
            { id: 'home', name: 'Smart Home', icon: 'fa-home', color: '#f5576c' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-gem', color: '#00f2fe' }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'NEW',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14" M2 Pro',
                price: 1999,
                rating: 5,
                reviews: 86,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Sony WH-1000XM5',
                price: 399,
                oldPrice: 449,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80)',
                category: 'audio'
            },
            {
                id: 4,
                title: 'Apple Watch Ultra',
                price: 799,
                rating: 5,
                reviews: 53,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80)',
                category: 'wearables'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                badge: 'BEST',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 6,
                title: 'Dyson Airwrap Complete',
                price: 599,
                oldPrice: 699,
                rating: 5,
                reviews: 189,
                badge: '-15%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Herman Miller Aeron',
                price: 1499,
                rating: 5,
                reviews: 67,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1586023492125-27b2c045efd7?auto=format&fit=crop&w=600&q=80)',
                category: 'home'
            },
            {
                id: 8,
                title: 'iPad Pro 12.9" M2',
                price: 1299,
                oldPrice: 1499,
                rating: 5,
                reviews: 156,
                badge: '-13%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=600&q=80)',
                category: 'laptops'
            }
        ];

        // State
        let cartCount = 0;
        let filteredProducts = [...PRODUCTS];

        // DOM Elements
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterMsg = document.getElementById('newsletterMsg');

        // Initialize
        function init() {
            renderCategories();
            renderProducts(filteredProducts);
            updateCartCount();
            setupDealTimer();
            setupEventListeners();
            
            // Set current year
            document.getElementById('currentYear').textContent = new Date().getFullYear();
            
            // Add animation classes
            document.querySelectorAll('.fade-in').forEach((el, i) => {
                el.style.animationDelay = `${i * 0.1}s`;
            });
        }

        // Render Categories
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const card = document.createElement('a');
                card.href = '#products';
                card.className = 'category-card scale-on-hover';
                card.innerHTML = `
                    <div class="category-icon" style="background: linear-gradient(135deg, ${cat.color}80, ${cat.color});">
                        <i class="fas ${cat.icon}"></i>
                    </div>
                    <h3 style="font-weight: 600; margin-bottom: 0.5rem;">${cat.name}</h3>
                    <div style="font-size: 0.875rem; opacity: 0.7;">Shop Now →</div>
                `;
                card.addEventListener('click', (e) => {
                    e.preventDefault();
                    filterProductsByCategory(cat.id);
                });
                categoriesGrid.appendChild(card);
            });
        }

        // Render Products
        function renderProducts(products) {
            productsGrid.innerHTML = '';
            products.forEach(product => {
                const card = document.createElement('div');
                card.className = 'product-item fade-in scale-on-hover';
                card.innerHTML = `
                    ${product.badge ? `<div class="product-badge">${product.badge}</div>` : ''}
                    <img src="${product.img}" alt="${product.title}" class="product-image">
                    <div class="product-content">
                        <h3 class="product-title">${product.title}</h3>
                        <div class="product-category">${product.category}</div>
                        <div class="product-price">
                            $${product.price}
                            ${product.oldPrice ? `<span class="old-price">$${product.oldPrice}</span>` : ''}
                        </div>
                        <div style="display: flex; align-items: center; margin-bottom: 1rem;">
                            <div style="color: #f59e0b; margin-right: 0.5rem;">
                                ${'★'.repeat(product.rating)}${product.rating < 5 ? '☆'.repeat(5 - product.rating) : ''}
                            </div>
                            <span style="font-size: 0.875rem; opacity: 0.7;">(${product.reviews})</span>
                        </div>
                        <div class="product-actions">
                            <button class="add-to-cart" data-id="${product.id}">
                                <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                            <button class="wishlist-btn" data-id="${product.id}">
                                <i class="far fa-heart"></i>
                            </button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(card);
            });

            // Add event listeners
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', () => addToCart(parseInt(btn.dataset.id)));
            });

            document.querySelectorAll('.wishlist-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.target.classList.toggle('fas');
                    e.target.classList.toggle('far');
                    if (e.target.classList.contains('fas')) {
                        e.target.style.color = '#ef4444';
                    }
                });
            });
        }

        // Add to Cart
        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            cartCount++;
            updateCartCount();

            // Visual feedback
            const btn = document.querySelector(`.add-to-cart[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.style.background = '#10b981';
                btn.disabled = true;
                
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.style.background = '';
                    btn.disabled = false;
                }, 1500);
            }

            // Cart animation
            document.getElementById('cartBtn').classList.add('pulse-on-hover');
            setTimeout(() => {
                document.getElementById('cartBtn').classList.remove('pulse-on-hover');
            }, 600);
        }

        // Update Cart Count
        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        // Filter Products by Category
        function filterProductsByCategory(category) {
            if (category === 'all') {
                filteredProducts = [...PRODUCTS];
            } else {
                filteredProducts = PRODUCTS.filter(p => p.category === category);
            }
            renderProducts(filteredProducts);
            smoothScrollTo('#products');
        }

        // Search Products
        function searchProducts(query) {
            const term = query.toLowerCase().trim();
            if (!term) {
                filteredProducts = [...PRODUCTS];
            } else {
                filteredProducts = PRODUCTS.filter(p =>
                    p.title.toLowerCase().includes(term) ||
                    p.category.toLowerCase().includes(term)
                );
            }
            renderProducts(filteredProducts);
        }

        // Deal Timer
        function setupDealTimer() {
            const targetTime = new Date();
            targetTime.setHours(targetTime.getHours() + 36); // 36 hours from now

            function updateTimer() {
                const now = new Date();
                const diff = targetTime - now;

                if (diff <= 0) {
                    clearInterval(timer);
                    return;
                }

                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((diff % (1000 * 60)) / 1000);

                document.getElementById('days').textContent = days.toString().padStart(2, '0');
                document.getElementById('hours').textContent = hours.toString().padStart(2, '0');
                document.getElementById('minutes').textContent = minutes.toString().padStart(2, '0');
                document.getElementById('seconds').textContent = seconds.toString().padStart(2, '0');
            }

            updateTimer();
            const timer = setInterval(updateTimer, 1000);
        }

        // Newsletter Subscription
        function setupNewsletter() {
            newsletterForm.addEventListener('submit', (e) => {
                e.preventDefault();
                const email = document.getElementById('newsletterEmail').value.trim();
                
                if (!validateEmail(email)) {
                    showNewsletterMessage('Please enter a valid email address', 'danger');
                    return;
                }

                // Simulate API call
                showNewsletterMessage('Subscribing...', 'info');
                
                setTimeout(() => {
                    showNewsletterMessage('Success! You are now subscribed to our newsletter.', 'success');
                    newsletterForm.reset();
                    
                    setTimeout(() => {
                        newsletterMsg.style.display = 'none';
                    }, 3000);
                }, 1000);
            });
        }

        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }

        function showNewsletterMessage(message, type) {
            newsletterMsg.textContent = message;
            newsletterMsg.style.display = 'block';
            newsletterMsg.style.color = type === 'success' ? '#10b981' : type === 'danger' ? '#ef4444' : '#3b82f6';
        }

        // Utility Functions
        function smoothScrollTo(selector) {
            const element = document.querySelector(selector);
            if (element) {
                window.scrollTo({
                    top: element.offsetTop - 100,
                    behavior: 'smooth'
                });
            }
        }

        // Event Listeners
        function setupEventListeners() {
            // Search
            searchInput.addEventListener('input', (e) => searchProducts(e.target.value));
            
            // Buttons
            document.getElementById('shopNow').addEventListener('click', () => smoothScrollTo('#products'));
            document.getElementById('exploreDeals').addEventListener('click', () => smoothScrollTo('#deals'));
            document.getElementById('buyDeal').addEventListener('click', () => {
                addToCart(999);
                showNewsletterMessage('Deal added to cart!', 'success');
            });
            
            // Newsletter
            setupNewsletter();
            
            // Mobile menu toggle (if needed)
            const mobileToggle = document.querySelector('.mobile-toggle');
            if (mobileToggle) {
                mobileToggle.addEventListener('click', () => {
                    document.querySelector('.nav-main').classList.toggle('show');
                });
            }
        }

        // Initialize everything
        window.addEventListener('DOMContentLoaded', init);
    </script>
</body>
</html>
