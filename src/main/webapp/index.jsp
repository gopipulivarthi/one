<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MŌNO — Considered Objects</title>
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,400&family=Inter:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <style>
    /* ============================================================
       MŌNO — editorial minimal luxury
       - Monochrome palette (ivory, charcoal, warm grey)
       - Thin serif display type (Cormorant Garamond)
       - Sans body type (Inter) with light weights
       - Generous negative space
       - Hairline borders, no shadows
       - Slow, refined transitions
    ============================================================ */
    :root {
      --ivory: #f7f5f1;
      --paper: #fdfcfa;
      --white: #ffffff;
      --charcoal: #1c1c1c;
      --charcoal-soft: #2e2e2e;
      --ink-muted: #6b6b6b;
      --ink-faint: #a8a5a0;
      --line: #e5e2dc;
      --line-dark: #cfcbc4;
      --accent: #8a7455;    /* warm tan */
      --accent-soft: #d4c8b8;
      --transition: all 0.5s cubic-bezier(0.22, 1, 0.36, 1);
      --transition-fast: all 0.25s ease;
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }

    html {
      scroll-behavior: smooth;
      font-size: 16px;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      font-weight: 300;
      background: var(--paper);
      color: var(--charcoal);
      line-height: 1.65;
      font-size: 15px;
      letter-spacing: 0.01em;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    a {
      color: inherit;
      text-decoration: none;
      transition: var(--transition-fast);
    }

    img { display: block; max-width: 100%; }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
      font-weight: inherit;
      letter-spacing: inherit;
    }

    input { font-family: inherit; }

    .container {
      max-width: 1360px;
      margin: 0 auto;
      padding: 0 48px;
    }

    /* ========== TYPOGRAPHY HELPERS ========== */
    .serif {
      font-family: 'Cormorant Garamond', serif;
      font-weight: 400;
    }

    .eyebrow {
      font-family: 'Inter', sans-serif;
      font-size: 10.5px;
      font-weight: 500;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--ink-muted);
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 14px;
      padding: 18px 44px;
      font-family: 'Inter', sans-serif;
      font-size: 11px;
      font-weight: 500;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      background: var(--charcoal);
      color: var(--paper);
      border: 1px solid var(--charcoal);
      transition: var(--transition);
      white-space: nowrap;
    }

    .btn:hover {
      background: transparent;
      color: var(--charcoal);
    }

    .btn-outline {
      background: transparent;
      color: var(--charcoal);
      border: 1px solid var(--charcoal);
    }

    .btn-outline:hover {
      background: var(--charcoal);
      color: var(--paper);
    }

    .btn-ghost {
      background: transparent;
      color: var(--paper);
      border: 1px solid rgba(255, 255, 255, 0.4);
    }

    .btn-ghost:hover {
      background: var(--paper);
      color: var(--charcoal);
      border-color: var(--paper);
    }

    .btn-sm {
      padding: 13px 28px;
      font-size: 10px;
      letter-spacing: 0.24em;
    }

    .link-underline {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      font-size: 11px;
      font-weight: 500;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      padding-bottom: 6px;
      border-bottom: 1px solid var(--charcoal);
      transition: var(--transition);
    }

    .link-underline:hover {
      gap: 20px;
      color: var(--accent);
      border-color: var(--accent);
    }

    /* ========== HEADER ========== */
    .header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(253, 252, 250, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--line);
    }

    .header-top {
      background: var(--charcoal);
      color: var(--paper);
      text-align: center;
      padding: 11px 24px;
      font-size: 10.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      font-weight: 400;
    }

    .header-top i {
      margin-right: 10px;
      color: var(--accent-soft);
    }

    .header-inner {
      display: grid;
      grid-template-columns: 1fr auto 1fr;
      align-items: center;
      gap: 32px;
      padding: 24px 0;
    }

    .brand {
      font-family: 'Cormorant Garamond', serif;
      font-size: 28px;
      font-weight: 500;
      letter-spacing: 0.32em;
      text-transform: uppercase;
      color: var(--charcoal);
      justify-self: center;
      grid-column: 2;
    }

    .main-nav {
      grid-column: 1;
      grid-row: 1;
    }

    .main-nav ul {
      display: flex;
      gap: 34px;
      list-style: none;
    }

    .main-nav li a {
      font-size: 11px;
      font-weight: 400;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-muted);
      padding-bottom: 4px;
      position: relative;
    }

    .main-nav li a::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 0;
      height: 1px;
      background: var(--charcoal);
      transition: var(--transition);
    }

    .main-nav li a:hover,
    .main-nav li a.active {
      color: var(--charcoal);
    }

    .main-nav li a:hover::after,
    .main-nav li a.active::after {
      width: 100%;
    }

    .header-actions {
      grid-column: 3;
      grid-row: 1;
      display: flex;
      align-items: center;
      justify-content: flex-end;
      gap: 24px;
    }

    .icon-btn {
      width: 36px;
      height: 36px;
      display: grid;
      place-items: center;
      font-size: 15px;
      color: var(--charcoal);
      transition: var(--transition-fast);
      position: relative;
    }

    .icon-btn:hover {
      color: var(--accent);
      transform: translateY(-2px);
    }

    .cart-wrap { position: relative; }

    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--charcoal);
      color: var(--paper);
      font-size: 9px;
      font-weight: 500;
      letter-spacing: 0.05em;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      transition: var(--transition-fast);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      border-bottom: 1px solid var(--line-dark);
      padding: 4px 0;
      transition: var(--transition-fast);
      width: 180px;
    }

    .search-wrap:focus-within {
      border-color: var(--charcoal);
      width: 220px;
    }

    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 6px 0;
      font-size: 12px;
      font-weight: 300;
      letter-spacing: 0.08em;
      color: var(--charcoal);
    }

    .search-wrap input::placeholder {
      color: var(--ink-faint);
      letter-spacing: 0.16em;
      text-transform: uppercase;
      font-size: 10px;
    }

    .search-wrap button {
      color: var(--ink-muted);
      font-size: 12px;
      padding: 4px;
      transition: var(--transition-fast);
    }

    .search-wrap button:hover { color: var(--charcoal); }

    .mobile-toggle {
      display: none;
      width: 36px;
      height: 36px;
      font-size: 18px;
      color: var(--charcoal);
    }

    #mobileMenu {
      display: none;
      background: var(--paper);
      border-top: 1px solid var(--line);
      padding: 28px 0;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 16px;
      padding: 14px 0;
      font-size: 12px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-muted);
      border-bottom: 1px solid var(--line);
    }

    #mobileMenu ul li:last-child a { border-bottom: none; }

    #mobileMenu ul li a:hover { color: var(--charcoal); }

    /* ========== HERO ========== */
    .hero {
      position: relative;
      background: var(--ivory);
      overflow: hidden;
    }

    .hero-inner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: center;
      min-height: 720px;
    }

    .hero-text {
      padding: 100px 60px 100px 0;
      max-width: 620px;
    }

    .hero-text .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 14px;
      margin-bottom: 40px;
    }

    .hero-text .eyebrow::before {
      content: '';
      width: 40px;
      height: 1px;
      background: var(--charcoal);
    }

    .hero h1 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 92px;
      font-weight: 300;
      line-height: 0.98;
      letter-spacing: -0.02em;
      color: var(--charcoal);
      margin-bottom: 32px;
    }

    .hero h1 em {
      font-style: italic;
      font-weight: 400;
      color: var(--accent);
    }

    .hero p {
      font-size: 16px;
      font-weight: 300;
      line-height: 1.85;
      color: var(--ink-muted);
      max-width: 440px;
      margin-bottom: 48px;
    }

    .hero-actions {
      display: flex;
      align-items: center;
      gap: 32px;
      flex-wrap: wrap;
    }

    .hero-image {
      position: relative;
      height: 100%;
      min-height: 720px;
      background: var(--ivory);
      overflow: hidden;
    }

    .hero-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 1.4s cubic-bezier(0.22, 1, 0.36, 1);
    }

    .hero-image:hover img {
      transform: scale(1.04);
    }

    .hero-image .caption {
      position: absolute;
      bottom: 32px;
      left: 32px;
      writing-mode: vertical-rl;
      transform: rotate(180deg);
      font-size: 10px;
      letter-spacing: 0.32em;
      text-transform: uppercase;
      color: var(--paper);
      background: rgba(28, 28, 28, 0.6);
      padding: 16px 10px;
      backdrop-filter: blur(10px);
    }

    .hero-stats {
      display: flex;
      gap: 56px;
      margin-top: 56px;
      padding-top: 40px;
      border-top: 1px solid var(--line-dark);
    }

    .stat-item .num {
      font-family: 'Cormorant Garamond', serif;
      font-size: 34px;
      font-weight: 400;
      letter-spacing: -0.01em;
      line-height: 1;
      color: var(--charcoal);
    }

    .stat-item .label {
      font-size: 10px;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      color: var(--ink-faint);
      margin-top: 8px;
    }

    /* ========== MARQUEE DIVIDER ========== */
    .divider-strip {
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      padding: 22px 0;
      overflow: hidden;
      white-space: nowrap;
      background: var(--paper);
    }

    .strip-track {
      display: inline-block;
      animation: slide 60s linear infinite;
    }

    @keyframes slide {
      from { transform: translateX(0); }
      to { transform: translateX(-50%); }
    }

    .strip-track span {
      display: inline-flex;
      align-items: center;
      gap: 40px;
      margin: 0 40px;
      font-family: 'Cormorant Garamond', serif;
      font-style: italic;
      font-size: 20px;
      color: var(--ink-muted);
      letter-spacing: 0.02em;
    }

    .strip-track span::after {
      content: '◦';
      color: var(--accent);
      font-size: 14px;
    }

    /* ========== SECTION ========== */
    .section {
      padding: 128px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 48px;
      margin-bottom: 72px;
      flex-wrap: wrap;
      padding-bottom: 32px;
      border-bottom: 1px solid var(--line);
    }

    .section-header .left {
      max-width: 620px;
    }

    .section-header h2 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 58px;
      font-weight: 300;
      line-height: 1.05;
      letter-spacing: -0.015em;
      color: var(--charcoal);
      margin-top: 20px;
    }

    .section-header h2 em {
      font-style: italic;
      color: var(--accent);
      font-weight: 400;
    }

    .section-header p {
      font-size: 15px;
      font-weight: 300;
      line-height: 1.8;
      color: var(--ink-muted);
      margin-top: 20px;
    }

    /* ========== CATEGORIES ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 0;
      border-top: 1px solid var(--line);
      border-left: 1px solid var(--line);
    }

    .cat-card {
      border-right: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      padding: 56px 20px;
      text-align: center;
      transition: var(--transition);
      cursor: pointer;
      position: relative;
      background: var(--paper);
      overflow: hidden;
    }

    .cat-card::before {
      content: '';
      position: absolute;
      inset: 0;
      background: var(--ivory);
      transform: translateY(100%);
      transition: var(--transition);
      z-index: 0;
    }

    .cat-card:hover::before {
      transform: translateY(0);
    }

    .cat-card > * {
      position: relative;
      z-index: 1;
    }

    .cat-card .icon-wrap {
      font-size: 26px;
      color: var(--charcoal);
      margin-bottom: 24px;
      transition: var(--transition);
      display: inline-block;
    }

    .cat-card:hover .icon-wrap {
      transform: translateY(-4px);
      color: var(--accent);
    }

    .cat-card h4 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 20px;
      font-weight: 500;
      letter-spacing: 0.04em;
      margin-bottom: 6px;
      color: var(--charcoal);
    }

    .cat-card .count {
      font-size: 10px;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      color: var(--ink-faint);
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 40px 32px;
    }

    .product-card {
      display: flex;
      flex-direction: column;
      position: relative;
      cursor: pointer;
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      aspect-ratio: 4 / 5;
      background: var(--ivory);
      margin-bottom: 24px;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 1.2s cubic-bezier(0.22, 1, 0.36, 1);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.05);
    }

    .product-card .badge {
      position: absolute;
      top: 20px;
      left: 20px;
      font-size: 9.5px;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      color: var(--charcoal);
      background: var(--paper);
      padding: 6px 12px;
      font-weight: 500;
    }

    .product-card .badge.sale {
      background: var(--charcoal);
      color: var(--paper);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 20px;
      right: 20px;
      width: 38px;
      height: 38px;
      background: var(--paper);
      display: grid;
      place-items: center;
      font-size: 14px;
      color: var(--charcoal);
      opacity: 0;
      transform: translateY(-4px);
      transition: var(--transition);
    }

    .product-card:hover .wish-btn {
      opacity: 1;
      transform: translateY(0);
    }

    .product-card .wish-btn:hover {
      background: var(--charcoal);
      color: var(--paper);
    }

    .product-card .body {
      display: flex;
      flex-direction: column;
      gap: 6px;
      flex: 1;
    }

    .product-card .category-tag {
      font-size: 10px;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      color: var(--ink-faint);
    }

    .product-card h5 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 22px;
      font-weight: 500;
      line-height: 1.25;
      letter-spacing: 0.005em;
      color: var(--charcoal);
      margin-top: 2px;
    }

    .product-card .price-row {
      display: flex;
      align-items: baseline;
      gap: 12px;
      margin-top: 6px;
    }

    .product-card .price {
      font-size: 15px;
      font-weight: 400;
      letter-spacing: 0.03em;
      color: var(--charcoal);
    }

    .product-card .old-price {
      font-size: 13px;
      font-weight: 300;
      color: var(--ink-faint);
      text-decoration: line-through;
    }

    .product-card .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 11px;
      color: var(--ink-faint);
      letter-spacing: 0.08em;
      margin-top: 2px;
    }

    .product-card .rating .stars {
      color: var(--accent);
      letter-spacing: 0.05em;
    }

    .product-card .footer {
      margin-top: 20px;
    }

    .product-card .add-btn {
      width: 100%;
      padding: 16px;
      background: transparent;
      border: 1px solid var(--charcoal);
      color: var(--charcoal);
      font-size: 10.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      font-weight: 500;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
    }

    .product-card .add-btn:hover {
      background: var(--charcoal);
      color: var(--paper);
    }

    .product-card .add-btn.added {
      background: var(--accent);
      border-color: var(--accent);
      color: var(--paper);
    }

    /* ========== EDITORIAL SPLIT ========== */
    .editorial {
      background: var(--ivory);
      padding: 0;
    }

    .editorial-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 640px;
    }

    .editorial-image {
      overflow: hidden;
      position: relative;
    }

    .editorial-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 1.6s cubic-bezier(0.22, 1, 0.36, 1);
    }

    .editorial-image:hover img { transform: scale(1.05); }

    .editorial-content {
      padding: 100px 80px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      max-width: 620px;
    }

    .editorial-content h3 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 52px;
      font-weight: 300;
      line-height: 1.05;
      letter-spacing: -0.01em;
      color: var(--charcoal);
      margin: 20px 0 28px;
    }

    .editorial-content h3 em {
      font-style: italic;
      color: var(--accent);
      font-weight: 400;
    }

    .editorial-content p {
      font-size: 15.5px;
      font-weight: 300;
      line-height: 1.9;
      color: var(--ink-muted);
      margin-bottom: 40px;
    }

    /* ========== FLASH DEAL ========== */
    .deal-wrap {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: var(--charcoal);
      color: var(--paper);
      min-height: 560px;
    }

    .deal-img {
      overflow: hidden;
      position: relative;
    }

    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 1.6s cubic-bezier(0.22, 1, 0.36, 1);
    }

    .deal-img:hover img { transform: scale(1.05); }

    .deal-content {
      padding: 80px 72px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      font-size: 10.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--accent-soft);
      margin-bottom: 32px;
    }

    .deal-content .tag::before {
      content: '';
      width: 32px;
      height: 1px;
      background: var(--accent-soft);
    }

    .deal-content h3 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 56px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -0.01em;
      color: var(--paper);
      margin-bottom: 20px;
    }

    .deal-content .desc {
      font-size: 15px;
      font-weight: 300;
      line-height: 1.85;
      color: rgba(253, 252, 250, 0.7);
      max-width: 420px;
      margin-bottom: 40px;
    }

    .deal-content .price-big {
      font-family: 'Cormorant Garamond', serif;
      font-size: 48px;
      font-weight: 400;
      letter-spacing: -0.01em;
      line-height: 1;
      color: var(--paper);
      margin-bottom: 8px;
    }

    .deal-content .price-big .old {
      font-size: 20px;
      color: rgba(253, 252, 250, 0.4);
      text-decoration: line-through;
      margin-left: 14px;
      font-family: 'Inter', sans-serif;
      font-weight: 300;
    }

    .deal-content .stock {
      font-size: 11px;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      color: var(--accent-soft);
      margin-bottom: 36px;
    }

    .deal-content .stock strong {
      color: var(--paper);
      font-weight: 500;
    }

    .timer-grid {
      display: flex;
      gap: 0;
      margin-bottom: 44px;
      border-top: 1px solid rgba(253, 252, 250, 0.15);
      border-bottom: 1px solid rgba(253, 252, 250, 0.15);
    }

    .timer-box {
      flex: 1;
      padding: 24px 12px;
      text-align: center;
      border-right: 1px solid rgba(253, 252, 250, 0.15);
    }

    .timer-box:last-child { border-right: none; }

    .timer-box .num {
      font-family: 'Cormorant Garamond', serif;
      font-size: 34px;
      font-weight: 400;
      line-height: 1;
      color: var(--paper);
    }

    .timer-box .label {
      font-size: 9.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: rgba(253, 252, 250, 0.5);
      margin-top: 8px;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 32px;
      overflow-x: auto;
      padding: 8px 0 32px;
      scroll-snap-type: x mandatory;
    }

    .testimonials-scroll::-webkit-scrollbar { height: 1px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--charcoal); }

    .testimonial-card {
      flex: 0 0 460px;
      scroll-snap-align: start;
      padding: 48px 44px;
      background: var(--ivory);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      min-height: 320px;
      transition: var(--transition);
    }

    .testimonial-card:hover {
      background: var(--white);
    }

    .testimonial-card .stars {
      color: var(--accent);
      font-size: 13px;
      letter-spacing: 0.3em;
      margin-bottom: 28px;
    }

    .testimonial-card blockquote {
      font-family: 'Cormorant Garamond', serif;
      font-size: 24px;
      font-weight: 400;
      line-height: 1.5;
      color: var(--charcoal);
      letter-spacing: 0.005em;
      font-style: italic;
      margin-bottom: 36px;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 18px;
      padding-top: 24px;
      border-top: 1px solid var(--line-dark);
    }

    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      filter: grayscale(100%);
      transition: var(--transition);
    }

    .testimonial-card:hover .author .avatar { filter: grayscale(0); }

    .testimonial-card .author .name {
      font-size: 12px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      font-weight: 500;
      color: var(--charcoal);
    }

    .testimonial-card .author .role {
      font-size: 11px;
      letter-spacing: 0.1em;
      color: var(--ink-faint);
      margin-top: 2px;
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: var(--ivory);
      padding: 96px 80px;
      text-align: center;
      max-width: 720px;
      margin: 0 auto;
    }

    .newsletter-wrap h3 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 48px;
      font-weight: 300;
      line-height: 1.1;
      letter-spacing: -0.01em;
      color: var(--charcoal);
      margin-bottom: 20px;
    }

    .newsletter-wrap h3 em {
      font-style: italic;
      color: var(--accent);
      font-weight: 400;
    }

    .newsletter-wrap p {
      font-size: 15px;
      font-weight: 300;
      line-height: 1.85;
      color: var(--ink-muted);
      margin-bottom: 44px;
      max-width: 480px;
      margin-left: auto;
      margin-right: auto;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 0;
      max-width: 520px;
      margin: 0 auto;
      border-bottom: 1px solid var(--charcoal);
    }

    .newsletter-wrap form input {
      flex: 1;
      padding: 18px 4px;
      border: none;
      background: transparent;
      outline: none;
      font-size: 14px;
      font-weight: 300;
      letter-spacing: 0.08em;
      color: var(--charcoal);
    }

    .newsletter-wrap form input::placeholder {
      color: var(--ink-faint);
      letter-spacing: 0.16em;
      text-transform: uppercase;
      font-size: 10.5px;
    }

    .newsletter-wrap form button {
      padding: 18px 4px;
      font-size: 10.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      font-weight: 500;
      color: var(--charcoal);
      display: flex;
      align-items: center;
      gap: 14px;
      transition: var(--transition-fast);
    }

    .newsletter-wrap form button:hover {
      color: var(--accent);
      gap: 20px;
    }

    #newsletterMsg {
      margin-top: 20px;
      font-size: 12px;
      letter-spacing: 0.16em;
      text-transform: uppercase;
    }

    /* ========== FOOTER ========== */
    footer {
      border-top: 1px solid var(--line);
      padding: 88px 0 40px;
      background: var(--paper);
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 72px;
      margin-bottom: 72px;
    }

    .footer-brand .brand {
      font-family: 'Cormorant Garamond', serif;
      font-size: 26px;
      letter-spacing: 0.32em;
      text-transform: uppercase;
      margin-bottom: 24px;
      justify-self: start;
      grid-column: auto;
    }

    .footer-brand p {
      font-size: 14px;
      font-weight: 300;
      line-height: 1.9;
      color: var(--ink-muted);
      max-width: 320px;
      margin-bottom: 32px;
    }

    .socials {
      display: flex;
      gap: 20px;
    }

    .socials a {
      width: 38px;
      height: 38px;
      border: 1px solid var(--line-dark);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--ink-muted);
      font-size: 13px;
      transition: var(--transition-fast);
    }

    .socials a:hover {
      background: var(--charcoal);
      color: var(--paper);
      border-color: var(--charcoal);
    }

    .footer-grid .col h5 {
      font-size: 10.5px;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--charcoal);
      margin-bottom: 24px;
      font-weight: 500;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 14px;
    }

    .footer-grid .col ul li a {
      font-size: 14px;
      font-weight: 300;
      color: var(--ink-muted);
      transition: var(--transition-fast);
    }

    .footer-grid .col ul li a:hover {
      color: var(--charcoal);
      padding-left: 6px;
    }

    .footer-bottom {
      padding-top: 40px;
      border-top: 1px solid var(--line);
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 24px;
      flex-wrap: wrap;
      font-size: 11px;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      color: var(--ink-faint);
    }

    .footer-bottom .links {
      display: flex;
      gap: 32px;
    }

    .footer-bottom .links a:hover { color: var(--charcoal); }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .hero h1 { font-size: 72px; }
      .section-header h2 { font-size: 46px; }
      .editorial-content h3 { font-size: 42px; }
      .deal-content h3 { font-size: 44px; }
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 48px; }
    }

    @media (max-width: 992px) {
      .container { padding: 0 28px; }
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .header-inner { grid-template-columns: auto 1fr auto; gap: 16px; }
      .brand { justify-self: center; font-size: 22px; letter-spacing: 0.24em; }
      .hero-inner { grid-template-columns: 1fr; min-height: auto; }
      .hero-text { padding: 72px 0 56px; max-width: 100%; }
      .hero h1 { font-size: 56px; }
      .hero-image { min-height: 460px; }
      .section { padding: 88px 0; }
      .section-header { margin-bottom: 48px; }
      .editorial-grid { grid-template-columns: 1fr; }
      .editorial-image { min-height: 420px; }
      .editorial-content { padding: 64px 40px; }
      .deal-wrap { grid-template-columns: 1fr; }
      .deal-img { min-height: 380px; }
      .deal-content { padding: 64px 40px; }
      .newsletter-wrap { padding: 72px 40px; }
      .search-wrap { width: 130px; }
    }

    @media (max-width: 768px) {
      .section { padding: 72px 0; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 32px 20px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .hero h1 { font-size: 44px; }
      .hero-stats { gap: 36px; margin-top: 44px; padding-top: 32px; }
      .stat-item .num { font-size: 26px; }
      .section-header h2 { font-size: 34px; }
      .section-header p { font-size: 14px; }
      .deal-content h3 { font-size: 36px; }
      .deal-content .price-big { font-size: 34px; }
      .testimonial-card { flex: 0 0 340px; padding: 40px 32px; }
      .testimonial-card blockquote { font-size: 20px; }
      .newsletter-wrap { padding: 56px 32px; }
      .newsletter-wrap h3 { font-size: 34px; }
      .editorial-content { padding: 48px 32px; }
      .editorial-content h3 { font-size: 34px; }
      .footer-grid { grid-template-columns: 1fr; gap: 40px; margin-bottom: 48px; }
      .footer-bottom { flex-direction: column; gap: 16px; text-align: center; }
      .search-wrap { display: none; }
      .cat-card { padding: 40px 14px; }
    }

    @media (max-width: 480px) {
      .container { padding: 0 20px; }
      .hero h1 { font-size: 36px; }
      .hero-text { padding: 48px 0 40px; }
      .hero-text .eyebrow { margin-bottom: 24px; }
      .hero p { font-size: 15px; margin-bottom: 32px; }
      .hero-actions { gap: 20px; }
      .btn { padding: 15px 32px; font-size: 10px; letter-spacing: 0.22em; }
      .hero-stats { gap: 24px; }
      .section { padding: 56px 0; }
      .section-header h2 { font-size: 28px; }
      .products-grid { grid-template-columns: 1fr; gap: 40px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .product-card h5 { font-size: 18px; }
      .testimonial-card { flex: 0 0 300px; padding: 32px 24px; }
      .testimonial-card blockquote { font-size: 17px; }
      .editorial-content { padding: 40px 24px; }
      .editorial-content h3 { font-size: 28px; }
      .deal-content { padding: 44px 24px; }
      .deal-content h3 { font-size: 30px; }
      .deal-content .price-big { font-size: 28px; }
      .timer-box { padding: 18px 6px; }
      .timer-box .num { font-size: 24px; }
      .newsletter-wrap { padding: 44px 24px; }
      .newsletter-wrap h3 { font-size: 28px; }
      .cat-card h4 { font-size: 17px; }
      .cat-card .icon-wrap { font-size: 22px; margin-bottom: 16px; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="header">
    <div class="header-top">
      <i class="fas fa-scissors"></i> Complimentary shipping on orders over $150 — worldwide
    </div>

    <div class="container header-inner">
      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active">Shop</a></li>
          <li><a href="#categories">Collections</a></li>
          <li><a href="#products">Editorial</a></li>
          <li><a href="#deals">Archive</a></li>
        </ul>
      </nav>

      <a class="brand" href="#">MŌNO</a>

      <div class="header-actions">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search" aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>

        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>

        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
            <i class="fas fa-shopping-bag"></i>
          </button>
          <span class="cart-count" id="cartCount">0</span>
        </div>

        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-shapes"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-book-open"></i> Editorial</a></li>
          <li><a href="#deals"><i class="fas fa-archive"></i> Archive</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero">
      <div class="hero-inner">
        <div class="container" style="padding-right: 0;">
          <div class="hero-text">
            <div class="eyebrow">Autumn / Winter Collection</div>
            <h1>Objects made <em>slowly,</em><br>kept forever.</h1>
            <p>A small selection of considered things — textiles, ceramics, and tools chosen for how they live, not how they sell.</p>
            <div class="hero-actions">
              <button class="btn" id="shopNow">Explore the collection</button>
              <a href="#deals" class="link-underline">View the archive <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="hero-stats">
              <div class="stat-item">
                <div class="num">28</div>
                <div class="label">Craftspeople</div>
              </div>
              <div class="stat-item">
                <div class="num">04</div>
                <div class="label">Countries</div>
              </div>
              <div class="stat-item">
                <div class="num">11y</div>
                <div class="label">Since 2014</div>
              </div>
            </div>
          </div>
        </div>

        <div class="hero-image">
          <img src="https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?auto=format&fit=crop&w=1200&q=80" alt="Editorial hero">
          <div class="caption">Fig. 01 — Studio, Kyoto</div>
        </div>
      </div>
    </section>

    <!-- DIVIDER STRIP -->
    <div class="divider-strip">
      <div class="strip-track">
        <span>Hand-finished</span>
        <span>Small batch</span>
        <span>Natural materials</span>
        <span>Made to last</span>
        <span>Hand-finished</span>
        <span>Small batch</span>
        <span>Natural materials</span>
        <span>Made to last</span>
      </div>
    </div>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div class="left">
            <div class="eyebrow">Categories</div>
            <h2>Browse by <em>category</em></h2>
          </div>
          <a href="#" class="link-underline">View all <i class="fas fa-arrow-right"></i></a>
        </div>

        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" style="padding-top: 0;">
      <div class="container">
        <div class="section-header">
          <div class="left">
            <div class="eyebrow">This week</div>
            <h2>New <em>arrivals</em></h2>
          </div>
          <a href="#" class="link-underline">Full catalogue <i class="fas fa-arrow-right"></i></a>
        </div>

        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- EDITORIAL SPLIT -->
    <section class="editorial">
      <div class="editorial-grid">
        <div class="editorial-image">
          <img src="https://images.unsplash.com/photo-1521737604893-d14cc237f11d?auto=format&fit=crop&w=1000&q=80" alt="Atelier">
        </div>
        <div class="editorial-content">
          <div class="eyebrow">The atelier</div>
          <h3>Made by hands<br>we <em>know by name.</em></h3>
          <p>Every piece in the MŌNO collection is made in small workshops by people we've worked with for years. No factories, no middlemen. Just honest craft, made slowly and shipped with care.</p>
          <a href="#" class="link-underline">Read the journal <i class="fas fa-arrow-right"></i></a>
        </div>
      </div>
    </section>

    <!-- FLASH DEAL -->
    <section class="section" id="deals" style="padding-top: 96px;">
      <div class="container">
        <div class="section-header">
          <div class="left">
            <div class="eyebrow">The archive</div>
            <h2>One piece, <em>quietly</em> discounted</h2>
          </div>
          <a href="#" class="link-underline">Full archive <i class="fas fa-arrow-right"></i></a>
        </div>

        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2">
          </div>
          <div class="deal-content">
            <div class="tag">Limited — 12 remaining</div>
            <h3>MacBook Air M2</h3>
            <p class="desc">Quietly, the best laptop we've ever carried. Silent, cool, and fast enough for anything you'd ask of it.</p>
            <div class="price-big">$999<span class="old">$1,199</span></div>
            <div class="stock"><strong>12</strong> pieces remaining — offer closes soon</div>

            <div class="timer-grid">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
            </div>

            <button class="btn btn-ghost" id="buyDeal" style="align-self: flex-start;">Add to bag</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header">
          <div class="left">
            <div class="eyebrow">Letters</div>
            <h2>From our <em>readers</em></h2>
          </div>
        </div>

        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" style="padding-top: 0;">
      <div class="container">
        <div class="newsletter-wrap">
          <h3>Join the <em>letter.</em></h3>
          <p>Occasional notes on new arrivals, studio visits, and things we've been thinking about. Never more than once a month.</p>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required />
            <button type="submit" id="subscribeBtn">Subscribe <i class="fas fa-arrow-right"></i></button>
            <div id="newsletterMsg" style="width: 100%; text-align: left;"></div>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <div class="brand">MŌNO</div>
          <p>A small, independent shop for considered objects. Made in small batches. Shipped from Kyoto and Lisbon.</p>
          <div class="socials">
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest-p"></i></a>
            <a href="#" aria-label="Journal"><i class="fas fa-book-open"></i></a>
            <a href="#" aria-label="Contact"><i class="fas fa-envelope"></i></a>
          </div>
        </div>

        <div class="col">
          <h5>Shop</h5>
          <ul>
            <li><a href="#">New arrivals</a></li>
            <li><a href="#">Textiles</a></li>
            <li><a href="#">Ceramics</a></li>
            <li><a href="#">Tools & objects</a></li>
          </ul>
        </div>

        <div class="col">
          <h5>Information</h5>
          <ul>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Care guide</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>

        <div class="col">
          <h5>Studio</h5>
          <ul>
            <li><a href="#">About us</a></li>
            <li><a href="#">Makers</a></li>
            <li><a href="#">Journal</a></li>
            <li><a href="#">Stockists</a></li>
          </ul>
        </div>
      </div>

      <div class="footer-bottom">
        <div>&copy; <span id="year"></span> MŌNO Studio — All rights reserved</div>
        <div class="links">
          <a href="#">Privacy</a>
          <a href="#">Terms</a>
          <a href="#">Cookies</a>
        </div>
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'textiles', name: 'Textiles', icon: 'fa-layer-group', count: 14 },
      { id: 'ceramics', name: 'Ceramics', icon: 'fa-mug-hot', count: 22 },
      { id: 'tools', name: 'Tools', icon: 'fa-screwdriver-wrench', count: 09 },
      { id: 'paper', name: 'Paper', icon: 'fa-book', count: 18 },
      { id: 'light', name: 'Lighting', icon: 'fa-lightbulb', count: 11 },
      { id: 'care', name: 'Care', icon: 'fa-leaf', count: 16 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'Linen Table Runner', price: 68, oldPrice: 88, rating: 5, reviews: 42, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1602028915047-37269d1a73f7?auto=format&fit=crop&w=800&q=80',
        category: 'Textiles' },
      { id: 2, title: 'Stoneware Serving Bowl', price: 54, rating: 5, reviews: 61, badge: 'New',
        img: 'https://images.unsplash.com/photo-1610701596007-11502861dcfa?auto=format&fit=crop&w=800&q=80',
        category: 'Ceramics' },
      { id: 3, title: 'Cast Iron Hand Plane', price: 128, rating: 5, reviews: 28, badge: '',
        img: 'https://images.unsplash.com/photo-1503387762-592deb58ef4e?auto=format&fit=crop&w=800&q=80',
        category: 'Tools' },
      { id: 4, title: 'Cotton Rag Notebook', price: 24, rating: 4, reviews: 84, badge: '',
        img: 'https://images.unsplash.com/photo-1531346878377-a5be20888e57?auto=format&fit=crop&w=800&q=80',
        category: 'Paper' },
      { id: 5, title: 'Brass Task Lamp', price: 186, oldPrice: 220, rating: 5, reviews: 37, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=800&q=80',
        category: 'Lighting' },
      { id: 6, title: 'Botanical Hand Balm', price: 22, rating: 5, reviews: 112, badge: 'New',
        img: 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?auto=format&fit=crop&w=800&q=80',
        category: 'Care' },
      { id: 7, title: 'Oversized Wool Throw', price: 168, rating: 5, reviews: 54, badge: '',
        img: 'https://images.unsplash.com/photo-1580301762395-1e5b3c1b5b1f?auto=format&fit=crop&w=800&q=80',
        category: 'Textiles' },
      { id: 8, title: 'Hand-thrown Tea Cup', price: 42, rating: 5, reviews: 96, badge: '',
        img: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=800&q=80',
        category: 'Ceramics' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava Martin', role: 'Kyoto',
        avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=120&q=80',
        text: 'The linen arrived beautifully folded with a hand-written note. It feels like a gift from a friend, not a store.',
        stars: 5 },
      { name: 'Michael Lee', role: 'Copenhagen',
        avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=120&q=80',
        text: 'I keep coming back because everything I\'ve bought has aged well — that\'s rare and worth the wait.',
        stars: 5 },
      { name: 'Sophia Chen', role: 'Portland',
        avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=120&q=80',
        text: 'The ceramics are even lovelier in person. The weight, the glaze, the small imperfections — all perfect.',
        stars: 5 },
      { name: 'James Wilson', role: 'London',
        avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80',
        text: 'MŌNO is the only shop I check every week. Everything feels chosen with care — nothing is filler.',
        stars: 5 }
    ];

    // ============================================================
    // STATE
    // ============================================================
    let cartCount = 0;

    // ============================================================
    // DOM REFS
    // ============================================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ============================================================
    // RENDER
    // ============================================================
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="count">${String(cat.count).padStart(2, '0')} pieces</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML =
          `<p style="grid-column:1/-1;text-align:center;padding:64px;font-family:'Cormorant Garamond',serif;font-style:italic;font-size:22px;color:var(--ink-muted);">No pieces found — try another search.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        let badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Save"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row">
              <span class="price">$${p.price}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating"><span class="stars">${stars}</span> · ${p.reviews} reviews</div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}">Add to bag</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          addToCart(Number(this.dataset.id), this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div>
            <div class="stars">${stars}</div>
            <blockquote>“${escapeHtml(t.text)}”</blockquote>
          </div>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div>
              <div class="name">${escapeHtml(t.name)}</div>
              <div class="role">${escapeHtml(t.role)}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ============================================================
    // UTILS
    // ============================================================
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
      } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = String(cartCount).padStart(2, '0');
      cartCountEl.style.transform = 'scale(1.3)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 300);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.textContent;
        btnEl.textContent = 'Added to bag';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.textContent = orig;
          btnEl.classList.remove('added');
        }, 1800);
      }
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ============================================================
    // DEAL TIMER
    // ============================================================
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          ['dealDays','dealHours','dealMinutes','dealSeconds'].forEach(id => {
            document.getElementById(id).textContent = id === 'dealDays' ? '0' : '00';
          });
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ============================================================
    // EVENTS
    // ============================================================
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.textContent;
      this.textContent = 'Added';
      this.style.background = 'var(--paper)';
      this.style.color = 'var(--charcoal)';
      this.style.borderColor = 'var(--paper)';
      setTimeout(() => {
        this.textContent = orig;
        this.style.background = '';
        this.style.color = '';
        this.style.borderColor = '';
      }, 1600);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#a85454';
        return;
      }
      newsletterMsg.textContent = 'Thank you — you\'re on the list.';
      newsletterMsg.style.color = 'var(--accent)';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.textContent = ''; }, 4000);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`Your bag contains ${cartCount} piece${cartCount !== 1 ? 's' : ''}.`);
    });

    document.getElementById('year').textContent = new Date().getFullYear();

    // ============================================================
    // INIT
    // ============================================================
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    window.addEventListener('resize', () => {
      if (window.innerWidth > 992) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('◦ MŌNO — editorial minimal UI loaded.');
  </script>
</body>
</html>
