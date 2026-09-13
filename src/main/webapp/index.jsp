<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · friendly commerce</title>
  <!-- fonts & icons (same as original) -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- FRIENDLY REDESIGN: SOFTER, SPACIOUS, CLEAR ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      /* Warm, welcoming palette */
      --bg: #fcfaf7;
      --bg-card: #ffffff;
      --primary: #1e2b3c;
      --primary-soft: #33495e;
      --accent: #d97a5c;       /* warm terracotta */
      --accent-soft: #f7e3db;
      --accent-dark: #b85e42;
      --success: #2e8b7a;
      --warning: #e9b45a;
      --muted: #5d6f7e;
      --muted-light: #8e9caa;
      --surface: #f5f1ec;
      --radius-lg: 24px;
      --radius-md: 18px;
      --radius-sm: 14px;
      --shadow-sm: 0 6px 18px rgba(0, 0, 0, 0.03), 0 2px 4px rgba(0, 0, 0, 0.02);
      --shadow-md: 0 12px 32px rgba(0, 0, 0, 0.05), 0 2px 6px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 20px 40px rgba(0, 0, 0, 0.08);
      --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1);
      --container: 1240px;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* --- buttons: friendlier, softer, more rounded --- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 1.5px solid transparent;
      cursor: pointer;
      background: transparent;
      color: inherit;
    }

    .btn-primary {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
      box-shadow: 0 8px 18px rgba(217, 122, 92, 0.2);
    }

    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 16px 28px rgba(217, 122, 92, 0.3);
    }

    .btn-secondary {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
    }

    .btn-secondary:hover {
      background: var(--primary-soft);
      border-color: var(--primary-soft);
      transform: translateY(-3px);
    }

    .btn-outline {
      border-color: rgba(30, 43, 60, 0.18);
      background: white;
      color: var(--primary);
      box-shadow: var(--shadow-sm);
    }

    .btn-outline:hover {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      transform: translateY(-3px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.2);
      color: white;
      border: 1.5px solid rgba(255, 255, 255, 0.4);
      backdrop-filter: blur(6px);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.35);
      border-color: white;
      transform: translateY(-3px);
    }

    .btn-sm {
      padding: 10px 22px;
      font-size: 14px;
    }

    /* --- HEADER: cleaner, more breathable --- */
    header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(252, 250, 247, 0.92);
      backdrop-filter: blur(16px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      padding: 8px 0;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 8px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.5px;
      color: var(--primary);
      text-decoration: none;
    }

    .brand i {
      font-size: 28px;
      color: var(--accent);
    }

    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 8px;
      list-style: none;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 15px;
      color: var(--muted);
      transition: var(--transition);
      text-decoration: none;
    }

    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 19px;
      color: var(--muted);
      background: transparent;
      transition: var(--transition);
      border: none;
      cursor: pointer;
    }

    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: 0;
      right: 0;
      background: var(--accent);
      color: white;
      font-size: 12px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 18px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 5px rgba(217, 122, 92, 0.1);
    }

    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-size: 15px;
      color: var(--primary);
    }

    .search-wrap button {
      padding: 10px 0 10px 12px;
      color: var(--muted);
      font-size: 16px;
      background: transparent;
      border: none;
      cursor: pointer;
    }

    .mobile-toggle {
      display: none;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      font-size: 22px;
      background: var(--surface);
      color: var(--primary);
      border: none;
      cursor: pointer;
    }

    #mobileMenu {
      display: none;
      background: white;
      padding: 16px 0 24px;
      border-top: 1px solid rgba(0, 0, 0, 0.03);
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 18px;
      border-radius: 16px;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
    }

    #mobileMenu ul li a:hover {
      background: var(--surface);
    }

    /* --- HERO: larger, friendlier illustration --- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 60px 0;
      border-radius: var(--radius-lg);
      overflow: hidden;
      margin: 28px 24px 0;
      background: linear-gradient(135deg, #1e2b3c, #2d4054);
      box-shadow: var(--shadow-md);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.3;
      mix-blend-mode: overlay;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero .badge {
      display: inline-block;
      background: rgba(217, 122, 92, 0.25);
      color: #ffd9cc;
      padding: 6px 20px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      letter-spacing: 0.3px;
      margin-bottom: 20px;
      backdrop-filter: blur(4px);
    }

    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 56px;
      font-weight: 700;
      color: white;
      line-height: 1.15;
      max-width: 700px;
      margin-bottom: 20px;
      text-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }

    .hero p {
      color: rgba(255, 255, 255, 0.9);
      font-size: 18px;
      max-width: 540px;
      margin-bottom: 32px;
      line-height: 1.6;
    }

    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* --- section headers --- */
    .section {
      padding: 64px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-size: 32px;
      font-weight: 700;
      letter-spacing: -0.4px;
    }

    .section-header p {
      color: var(--muted);
      font-size: 16px;
      margin-top: 6px;
    }

    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 15px;
      text-decoration: none;
      transition: var(--transition);
    }

    .view-all:hover {
      gap: 14px;
      color: var(--accent-dark);
    }

    /* --- categories: bigger, friendlier icons --- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .cat-card {
      background: white;
      border-radius: var(--radius-md);
      padding: 28px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 1.5px solid rgba(0, 0, 0, 0.02);
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }

    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 28px;
      color: var(--accent);
      transition: var(--transition);
    }

    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: white;
    }

    .cat-card h4 {
      font-size: 16px;
      font-weight: 600;
      margin-bottom: 4px;
    }

    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
    }

    /* --- products: more card spacing, easier to scan --- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 26px;
    }

    .product-card {
      background: white;
      border-radius: var(--radius-md);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1.5px solid rgba(0, 0, 0, 0.02);
    }

    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.05);
    }

    .product-card .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: white;
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 0.3px;
    }

    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 16px;
      right: 16px;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      border: none;
      cursor: pointer;
      backdrop-filter: blur(4px);
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
    }

    .product-card .wish-btn:hover {
      background: white;
      color: var(--accent);
      transform: scale(1.12);
    }

    .product-card .body {
      padding: 20px 20px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .category-tag {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }

    .product-card h5 {
      font-size: 16px;
      font-weight: 600;
      line-height: 1.4;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 4px;
    }

    .price {
      font-weight: 700;
      font-size: 20px;
      color: var(--primary);
    }

    .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 15px;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 14px;
      color: #f5a623;
    }

    .rating span {
      color: var(--muted);
    }

    .product-card .footer {
      padding: 0 20px 22px;
      display: flex;
      gap: 12px;
    }

    .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: white;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: none;
      cursor: pointer;
    }

    .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
    }

    .add-btn.added {
      background: var(--success);
    }

    /* --- flash deal: friendlier layout --- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: white;
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-md);
    }

    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 340px;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 6px 18px;
      border-radius: 60px;
      font-size: 13px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 16px;
    }

    .deal-content h3 {
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 8px;
    }

    .deal-content .desc {
      color: var(--muted);
      margin-bottom: 20px;
      font-size: 16px;
    }

    .price-big {
      font-size: 36px;
      font-weight: 800;
      color: var(--primary);
    }

    .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }

    .stock {
      font-size: 15px;
      color: var(--muted);
      margin: 6px 0 20px;
    }

    .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 18px 0 24px;
    }

    .timer-box {
      background: var(--primary);
      color: white;
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      min-width: 74px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 28px;
      font-weight: 700;
      line-height: 1.2;
    }

    .timer-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.6px;
    }

    /* --- testimonials --- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 10px 4px 20px;
      scroll-snap-type: x mandatory;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: white;
      border-radius: var(--radius-md);
      padding: 28px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
    }

    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
    }

    .stars {
      color: #f5a623;
      font-size: 18px;
      letter-spacing: 3px;
      margin-bottom: 14px;
    }

    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 18px;
      font-style: italic;
    }

    .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .avatar {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }

    .name {
      font-weight: 600;
      font-size: 15px;
    }

    .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* --- newsletter --- */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-soft) 100%);
      border-radius: var(--radius-lg);
      padding: 52px 56px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
    }

    .newsletter-wrap .text h3 {
      font-size: 28px;
      font-weight: 700;
      margin-bottom: 6px;
    }

    .newsletter-wrap .text p {
      opacity: 0.8;
      font-size: 16px;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 500px;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 24px;
      border-radius: 60px;
      border: none;
      font-size: 16px;
      background: rgba(255, 255, 255, 0.15);
      color: white;
      outline: 2px solid transparent;
      transition: var(--transition);
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.6);
    }

    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.22);
    }

    .newsletter-wrap form .btn {
      background: var(--accent);
      border-color: var(--accent);
      padding: 16px 36px;
    }

    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }

    #newsletterMsg {
      margin-top: 14px;
      font-size: 15px;
      width: 100%;
    }

    /* --- footer --- */
    footer {
      padding: 52px 0 32px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
      margin-top: 20px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }

    .brand-col p {
      color: var(--muted);
      font-size: 15px;
      max-width: 320px;
      line-height: 1.7;
    }

    .socials {
      display: flex;
      gap: 12px;
      margin-top: 18px;
    }

    .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 18px;
      text-decoration: none;
    }

    .socials a:hover {
      background: var(--accent);
      color: white;
      transform: translateY(-3px);
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 16px;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 15px;
      text-decoration: none;
      transition: var(--transition);
    }

    .footer-grid .col ul li a:hover {
      color: var(--accent);
    }

    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
      color: var(--muted-light);
      font-size: 14px;
    }

    /* --- responsive tweaks --- */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 42px;
      }
      .hero {
        min-height: 420px;
        margin: 20px 20px 0;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 260px;
      }
      .deal-content {
        padding: 32px 28px;
      }
      .newsletter-wrap {
        padding: 40px 32px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
    }

    @media (max-width: 768px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 18px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 14px;
      }
      .hero h1 {
        font-size: 32px;
      }
      .section-header h2 {
        font-size: 26px;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 32px;
      }
      .search-wrap {
        min-width: 140px;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
      }
      .hero {
        margin: 12px 12px 0;
        min-height: 360px;
        padding: 36px 0;
      }
      .hero h1 {
        font-size: 26px;
      }
      .container {
        padding: 0 16px;
      }
      .deal-content {
        padding: 24px 20px;
      }
      .timer-box {
        min-width: 56px;
        padding: 8px 10px;
      }
      .timer-box .num {
        font-size: 20px;
      }
      .newsletter-wrap {
        padding: 28px 20px;
      }
      .newsletter-wrap .text h3 {
        font-size: 22px;
      }
      .product-card .body {
        padding: 14px 14px 10px;
      }
      .product-card h5 {
        font-size: 14px;
      }
      .price {
        font-size: 17px;
      }
      .add-btn {
        font-size: 13px;
        padding: 10px;
      }
    }

    /* helpers */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .sr-only {
      position: absolute; width: 1px; height: 1px;
      padding: 0; margin: -1px; overflow: hidden;
      clip: rect(0, 0, 0, 0); border: 0;
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex; align-items:center; gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex; align-items:center; gap:12px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="cat-title">Browse Categories</h2>
            <p>Find exactly what you're looking for</p>
          </div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="prod-title">Trending Now</h2>
            <p>What's hot — popular picks from our community</p>
