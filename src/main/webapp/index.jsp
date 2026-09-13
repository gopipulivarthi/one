<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PULSE — Shop Loud. Live Bright.</title>
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Archivo+Black&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <style>
    /* ============================================================
       NEO-BRUTALIST / POP STYLE
       - Thick black borders
       - Hard offset shadows (no blur)
       - Vibrant pop colors
       - Chunky rounded corners
       - Playful rotated stickers
    ============================================================ */
    :root {
      --ink: #111111;
      --paper: #fffdf7;
      --paper-2: #f5f1e6;
      --yellow: #ffd23f;
      --pink: #ff5d8f;
      --blue: #4ea8de;
      --lime: #b8e986;
      --purple: #9d4edd;
      --orange: #ff7a45;
      --border: 3px solid var(--ink);
      --shadow-sm: 4px 4px 0 var(--ink);
      --shadow-md: 6px 6px 0 var(--ink);
      --shadow-lg: 10px 10px 0 var(--ink);
      --shadow-hover: 12px 12px 0 var(--ink);
      --transition: 0.15s ease;
      --radius: 14px;
      --radius-lg: 22px;
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }

    html { scroll-behavior: smooth; }

    body {
      font-family: 'Space Grotesk', system-ui, sans-serif;
      background: var(--paper);
      background-image:
        radial-gradient(circle at 20% 10%, rgba(255, 210, 63, 0.15) 0%, transparent 40%),
        radial-gradient(circle at 80% 80%, rgba(78, 168, 222, 0.12) 0%, transparent 40%);
      background-attachment: fixed;
      color: var(--ink);
      line-height: 1.5;
      font-size: 15.5px;
      font-weight: 500;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { font-family: inherit; cursor: pointer; border: none; background: none; color: inherit; }
    input { font-family: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 30px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 15px;
      letter-spacing: -0.01em;
      border: var(--border);
      border-radius: var(--radius);
      background: var(--yellow);
      color: var(--ink);
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      white-space: nowrap;
      text-transform: uppercase;
      font-size: 13.5px;
    }

    .btn:hover {
      transform: translate(-2px, -2px);
      box-shadow: var(--shadow-md);
    }
    .btn:active {
      transform: translate(2px, 2px);
      box-shadow: 2px 2px 0 var(--ink);
    }

    .btn-pink { background: var(--pink); color: #fff; }
    .btn-blue { background: var(--blue); color: #fff; }
    .btn-lime { background: var(--lime); }
    .btn-purple { background: var(--purple); color: #fff; }
    .btn-white { background: #fff; }
    .btn-black { background: var(--ink); color: #fff; }

    .btn-sm { padding: 10px 20px; font-size: 12px; }
    .btn-lg { padding: 18px 38px; font-size: 15px; }

    /* ========== HEADER ========== */
    .header {
      position: sticky;
      top: 0;
      z-index: 300;
      background: var(--paper);
      border-bottom: var(--border);
    }

    .marquee {
      background: var(--ink);
      color: var(--yellow);
      font-weight: 700;
      font-size: 13px;
      padding: 8px 0;
      overflow: hidden;
      white-space: nowrap;
      letter-spacing: 0.05em;
      text-transform: uppercase;
    }

    .marquee-track {
      display: inline-block;
      animation: scroll 30s linear infinite;
    }

    @keyframes scroll {
      from { transform: translateX(0); }
      to { transform: translateX(-50%); }
    }

    .marquee-track span {
      margin: 0 28px;
    }

    .marquee-track i {
      color: var(--pink);
      margin-right: 10px;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 16px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Archivo Black', sans-serif;
      font-size: 28px;
      letter-spacing: -1px;
      color: var(--ink);
      text-transform: uppercase;
    }

    .brand .logo-box {
      width: 42px;
      height: 42px;
      background: var(--pink);
      border: var(--border);
      border-radius: 12px;
      display: grid;
      place-items: center;
      color: #fff;
      font-size: 20px;
      box-shadow: 3px 3px 0 var(--ink);
      transform: rotate(-4deg);
    }

    .brand span .bang {
      color: var(--pink);
    }

    .main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }

    .main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 16px;
      font-weight: 700;
      font-size: 13.5px;
      text-transform: uppercase;
      letter-spacing: 0.02em;
      border: 2px solid transparent;
      border-radius: 10px;
      transition: var(--transition);
    }

    .main-nav li a:hover,
    .main-nav li a.active {
      background: var(--ink);
      color: var(--yellow);
      border-color: var(--ink);
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
      border: var(--border);
      border-radius: 12px;
      font-size: 17px;
      background: #fff;
      color: var(--ink);
      box-shadow: 3px 3px 0 var(--ink);
      transition: var(--transition);
      position: relative;
    }

    .icon-btn:hover {
      background: var(--yellow);
      transform: translate(-2px, -2px);
      box-shadow: 5px 5px 0 var(--ink);
    }
    .icon-btn:active {
      transform: translate(2px, 2px);
      box-shadow: 1px 1px 0 var(--ink);
    }

    .cart-wrap { position: relative; }

    .cart-count {
      position: absolute;
      top: -8px;
      right: -8px;
      background: var(--pink);
      color: #fff;
      font-size: 12px;
      font-weight: 800;
      width: 24px;
      height: 24px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2.5px solid var(--ink);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #fff;
      border: var(--border);
      border-radius: 12px;
      padding: 0 6px 0 16px;
      box-shadow: 3px 3px 0 var(--ink);
      transition: var(--transition);
      min-width: 220px;
      height: 46px;
    }

    .search-wrap:focus-within {
      background: var(--lime);
    }

    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 8px 0;
      font-size: 14px;
      font-weight: 600;
      color: var(--ink);
    }

    .search-wrap input::placeholder {
      color: #888;
      font-weight: 500;
    }

    .search-wrap button {
      padding: 8px;
      border-radius: 8px;
      color: var(--ink);
      font-size: 14px;
    }

    .mobile-toggle {
      display: none;
      width: 46px;
      height: 46px;
      border: var(--border);
      border-radius: 12px;
      font-size: 18px;
      background: var(--yellow);
      color: var(--ink);
      box-shadow: 3px 3px 0 var(--ink);
    }

    #mobileMenu {
      display: none;
      background: var(--paper-2);
      border-top: var(--border);
      padding: 16px 0 24px;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 14px 18px;
      font-weight: 700;
      font-size: 14px;
      text-transform: uppercase;
      background: #fff;
      border: var(--border);
      border-radius: 12px;
      box-shadow: 3px 3px 0 var(--ink);
    }

    #mobileMenu ul li a:hover {
      background: var(--yellow);
    }

    /* ========== HERO ========== */
    .hero {
      padding: 40px 0 20px;
      position: relative;
    }

    .hero-grid {
      display: grid;
      grid-template-columns: 1.15fr 1fr;
      gap: 40px;
      align-items: center;
    }

    .hero-badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--lime);
      border: var(--border);
      border-radius: 999px;
      padding: 8px 18px;
      font-weight: 700;
      font-size: 12.5px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      box-shadow: var(--shadow-sm);
      transform: rotate(-2deg);
      margin-bottom: 22px;
    }

    .hero h1 {
      font-family: 'Archivo Black', sans-serif;
      font-size: 76px;
      line-height: 0.95;
      letter-spacing: -3px;
      text-transform: uppercase;
      color: var(--ink);
      margin-bottom: 22px;
    }

    .hero h1 .highlight {
      background: var(--yellow);
      padding: 0 12px;
      display: inline-block;
      transform: rotate(-1deg);
      border: var(--border);
      box-shadow: var(--shadow-sm);
    }

    .hero h1 .outline {
      -webkit-text-stroke: 3px var(--ink);
      color: transparent;
    }

    .hero p.lede {
      font-size: 18px;
      font-weight: 500;
      color: #333;
      max-width: 500px;
      margin-bottom: 30px;
      line-height: 1.55;
    }

    .hero-cta {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
      margin-bottom: 32px;
    }

    .hero-stats {
      display: flex;
      gap: 28px;
      flex-wrap: wrap;
    }

    .stat-item {
      display: flex;
      flex-direction: column;
    }

    .stat-item .num {
      font-family: 'Archivo Black', sans-serif;
      font-size: 30px;
      letter-spacing: -1px;
      line-height: 1;
    }

    .stat-item .label {
      font-size: 12.5px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      color: #666;
      margin-top: 4px;
    }

    /* Hero visual */
    .hero-visual {
      position: relative;
      height: 520px;
    }

    .hero-card {
      position: absolute;
      border: var(--border);
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-lg);
      overflow: hidden;
      background: #fff;
    }

    .hero-card img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
    }

    .hero-card.main {
      top: 0;
      right: 0;
      width: 82%;
      height: 82%;
      transform: rotate(2deg);
    }

    .hero-card.secondary {
      bottom: 0;
      left: 0;
      width: 55%;
      height: 55%;
      transform: rotate(-4deg);
      z-index: 2;
    }

    .hero-sticker {
      position: absolute;
      background: var(--pink);
      color: #fff;
      border: var(--border);
      border-radius: 999px;
      padding: 10px 20px;
      font-weight: 800;
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      box-shadow: var(--shadow-sm);
      z-index: 3;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .hero-sticker.one {
      top: 40px;
      left: 30px;
      transform: rotate(-8deg);
      background: var(--purple);
      color: #fff;
    }

    .hero-sticker.two {
      bottom: 90px;
      right: 30px;
      transform: rotate(6deg);
      background: var(--yellow);
      color: var(--ink);
    }

    .hero-star {
      position: absolute;
      color: var(--orange);
      font-size: 40px;
      z-index: 1;
      animation: spin 8s linear infinite;
    }

    .hero-star.s1 { top: 20px; right: 40%; }
    .hero-star.s2 { bottom: 40px; left: 45%; font-size: 28px; color: var(--blue); }

    @keyframes spin {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }

    /* ========== SECTION HEADERS ========== */
    .section {
      padding: 70px 0 40px;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 24px;
      margin-bottom: 36px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-family: 'Archivo Black', sans-serif;
      font-size: 44px;
      letter-spacing: -2px;
      text-transform: uppercase;
      line-height: 1;
    }

    .section-header h2 .em {
      background: var(--blue);
      color: #fff;
      padding: 0 10px;
      border: var(--border);
      display: inline-block;
      transform: rotate(-1.5deg);
      box-shadow: var(--shadow-sm);
    }

    .section-header p {
      font-size: 15.5px;
      font-weight: 500;
      color: #555;
      margin-top: 10px;
    }

    .view-all {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-weight: 700;
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      background: var(--ink);
      color: #fff;
      padding: 12px 22px;
      border-radius: 10px;
      border: var(--border);
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      white-space: nowrap;
    }

    .view-all:hover {
      background: var(--pink);
      transform: translate(-2px, -2px);
      box-shadow: var(--shadow-md);
    }

    /* ========== CATEGORIES ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }

    .cat-card {
      background: #fff;
      border: var(--border);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      position: relative;
    }

    .cat-card:nth-child(1) { background: var(--yellow); }
    .cat-card:nth-child(2) { background: var(--pink); color: #fff; }
    .cat-card:nth-child(3) { background: var(--blue); color: #fff; }
    .cat-card:nth-child(4) { background: var(--lime); }
    .cat-card:nth-child(5) { background: var(--purple); color: #fff; }
    .cat-card:nth-child(6) { background: var(--orange); color: #fff; }

    .cat-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: var(--shadow-md);
    }

    .cat-card .icon-wrap {
      width: 54px;
      height: 54px;
      border-radius: 50%;
      background: #fff;
      border: var(--border);
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 22px;
      color: var(--ink);
      box-shadow: 3px 3px 0 var(--ink);
      transition: var(--transition);
    }

    .cat-card:hover .icon-wrap {
      transform: rotate(-12deg) scale(1.05);
    }

    .cat-card h4 {
      font-size: 14.5px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.02em;
    }

    .cat-card .count {
      font-size: 12px;
      font-weight: 600;
      margin-top: 2px;
      opacity: 0.85;
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }

    .product-card {
      background: #fff;
      border: var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: var(--shadow-md);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      aspect-ratio: 1 / 1;
      background: var(--paper-2);
      border-bottom: var(--border);
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.06) rotate(1deg);
    }

    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--pink);
      color: #fff;
      padding: 6px 12px;
      font-size: 11px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      border: 2px solid var(--ink);
      border-radius: 6px;
      box-shadow: 2px 2px 0 var(--ink);
      transform: rotate(-3deg);
    }

    .product-card .badge.new { background: var(--blue); }
    .product-card .badge.sale { background: var(--yellow); color: var(--ink); }

    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 38px;
      height: 38px;
      background: #fff;
      border: 2px solid var(--ink);
      border-radius: 10px;
      display: grid;
      place-items: center;
      font-size: 15px;
      color: var(--ink);
      box-shadow: 2px 2px 0 var(--ink);
      transition: var(--transition);
    }

    .product-card .wish-btn:hover {
      background: var(--pink);
      color: #fff;
      transform: scale(1.1) rotate(-6deg);
    }

    .product-card .body {
      padding: 16px 16px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    .product-card .category-tag {
      font-size: 11px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      color: #777;
    }

    .product-card h5 {
      font-size: 15.5px;
      font-weight: 700;
      line-height: 1.3;
      color: var(--ink);
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }

    .product-card .price {
      font-family: 'Archivo Black', sans-serif;
      font-size: 20px;
      letter-spacing: -0.5px;
      color: var(--ink);
    }

    .product-card .old-price {
      color: #999;
      text-decoration: line-through;
      font-size: 14px;
      font-weight: 600;
    }

    .product-card .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: var(--orange);
      font-weight: 700;
    }

    .product-card .rating span {
      color: #777;
      font-weight: 500;
    }

    .product-card .footer {
      padding: 0 16px 16px;
    }

    .product-card .add-btn {
      width: 100%;
      padding: 12px;
      background: var(--ink);
      color: var(--yellow);
      font-weight: 800;
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      border: var(--border);
      border-radius: 10px;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .product-card .add-btn:hover {
      background: var(--pink);
      color: #fff;
      transform: translate(-2px, -2px);
      box-shadow: var(--shadow-md);
    }

    .product-card .add-btn.added {
      background: var(--lime);
      color: var(--ink);
    }

    /* ========== FLASH DEAL ========== */
    .deal-wrap {
      display: flex;
      background: var(--purple);
      color: #fff;
      border: var(--border);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-lg);
      position: relative;
    }

    .deal-wrap .deal-img {
      flex: 0 0 45%;
      border-right: var(--border);
      min-height: 380px;
      background: var(--paper-2);
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      position: relative;
      z-index: 1;
    }

    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--yellow);
      color: var(--ink);
      padding: 8px 18px;
      border: var(--border);
      border-radius: 999px;
      font-size: 12px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      align-self: flex-start;
      margin-bottom: 18px;
      box-shadow: var(--shadow-sm);
      transform: rotate(-2deg);
    }

    .deal-wrap .deal-content h3 {
      font-family: 'Archivo Black', sans-serif;
      font-size: 44px;
      line-height: 1;
      letter-spacing: -2px;
      text-transform: uppercase;
      margin-bottom: 12px;
    }

    .deal-wrap .deal-content .desc {
      font-size: 16px;
      margin-bottom: 20px;
      color: rgba(255, 255, 255, 0.9);
      max-width: 420px;
    }

    .deal-wrap .deal-content .price-big {
      font-family: 'Archivo Black', sans-serif;
      font-size: 48px;
      letter-spacing: -2px;
      line-height: 1;
    }

    .deal-wrap .deal-content .price-big .old {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 22px;
      font-weight: 600;
      color: rgba(255, 255, 255, 0.55);
      text-decoration: line-through;
      margin-left: 12px;
      letter-spacing: 0;
    }

    .deal-wrap .deal-content .stock {
      font-size: 14.5px;
      font-weight: 600;
      margin: 8px 0 20px;
      color: rgba(255, 255, 255, 0.85);
    }

    .deal-wrap .deal-content .stock strong {
      background: var(--pink);
      color: #fff;
      padding: 2px 10px;
      border-radius: 6px;
      border: 2px solid var(--ink);
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 8px 0 28px;
    }

    .timer-box {
      background: var(--ink);
      color: #fff;
      padding: 12px 16px;
      border-radius: 10px;
      min-width: 72px;
      text-align: center;
      border: 2px solid #fff;
      box-shadow: 3px 3px 0 rgba(0,0,0,0.4);
    }

    .timer-box .num {
      font-family: 'Archivo Black', sans-serif;
      font-size: 26px;
      line-height: 1.1;
    }

    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      font-weight: 700;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }

    .testimonials-scroll::-webkit-scrollbar { height: 6px; }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--ink);
      border-radius: 999px;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: #fff;
      border: var(--border);
      border-radius: var(--radius);
      padding: 26px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
      position: relative;
    }

    .testimonial-card:nth-child(even) { background: var(--paper-2); }

    .testimonial-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: var(--shadow-md);
    }

    .testimonial-card .quote-mark {
      font-family: 'Archivo Black', sans-serif;
      font-size: 48px;
      line-height: 0.8;
      color: var(--pink);
      margin-bottom: 8px;
    }

    .testimonial-card .stars {
      color: var(--orange);
      font-size: 15px;
      letter-spacing: 2px;
      margin-bottom: 12px;
    }

    .testimonial-card blockquote {
      font-size: 15.5px;
      line-height: 1.55;
      color: var(--ink);
      margin-bottom: 20px;
      font-weight: 500;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      padding-top: 16px;
      border-top: 2px dashed var(--ink);
    }

    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      border: 2.5px solid var(--ink);
      box-shadow: 2px 2px 0 var(--ink);
    }

    .testimonial-card .author .name {
      font-weight: 800;
      font-size: 14.5px;
      text-transform: uppercase;
      letter-spacing: 0.02em;
    }

    .testimonial-card .author .role {
      font-size: 12.5px;
      color: #666;
      font-weight: 600;
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: var(--yellow);
      border: var(--border);
      border-radius: var(--radius-lg);
      padding: 48px 52px;
      color: var(--ink);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow-lg);
      position: relative;
      overflow: hidden;
    }

    .newsletter-wrap::before {
      content: '★';
      position: absolute;
      font-size: 220px;
      color: rgba(0,0,0,0.06);
      top: -40px;
      right: -20px;
      font-family: 'Archivo Black', sans-serif;
      line-height: 1;
    }

    .newsletter-wrap .text {
      position: relative;
      z-index: 1;
    }

    .newsletter-wrap .text h3 {
      font-family: 'Archivo Black', sans-serif;
      font-size: 40px;
      letter-spacing: -2px;
      text-transform: uppercase;
      line-height: 1;
      margin-bottom: 8px;
    }

    .newsletter-wrap .text p {
      font-size: 15.5px;
      font-weight: 600;
      color: #444;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 500px;
      position: relative;
      z-index: 1;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 22px;
      border: var(--border);
      border-radius: 12px;
      font-size: 15px;
      font-weight: 600;
      background: #fff;
      color: var(--ink);
      outline: none;
      box-shadow: var(--shadow-sm);
    }

    .newsletter-wrap form input::placeholder {
      color: #999;
    }

    .newsletter-wrap form input:focus {
      background: var(--lime);
    }

    .newsletter-wrap form .btn {
      padding: 16px 30px;
      font-size: 14px;
    }

    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      font-weight: 700;
      width: 100%;
      position: relative;
      z-index: 1;
    }

    /* ========== FOOTER ========== */
    footer {
      background: var(--ink);
      color: var(--paper);
      margin-top: 60px;
      border-top: var(--border);
      padding: 60px 0 30px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .footer-brand .brand {
      color: var(--paper);
      font-size: 26px;
      margin-bottom: 16px;
    }

    .footer-brand .brand .logo-box {
      background: var(--yellow);
      color: var(--ink);
      box-shadow: 3px 3px 0 var(--pink);
    }

    .footer-brand p {
      color: #aaa;
      font-size: 14.5px;
      max-width: 320px;
      line-height: 1.7;
      font-weight: 500;
    }

    .socials {
      display: flex;
      gap: 10px;
      margin-top: 20px;
    }

    .socials a {
      width: 44px;
      height: 44px;
      border: 2px solid var(--paper);
      border-radius: 12px;
      display: grid;
      place-items: center;
      color: var(--paper);
      font-size: 16px;
      transition: var(--transition);
      box-shadow: 3px 3px 0 var(--pink);
    }

    .socials a:hover {
      background: var(--yellow);
      color: var(--ink);
      transform: translate(-2px, -2px);
      box-shadow: 5px 5px 0 var(--pink);
    }

    .footer-grid .col h5 {
      font-family: 'Archivo Black', sans-serif;
      font-size: 15px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      margin-bottom: 20px;
      color: var(--yellow);
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    .footer-grid .col ul li a {
      color: #ccc;
      font-size: 14.5px;
      font-weight: 500;
      transition: var(--transition);
    }

    .footer-grid .col ul li a:hover {
      color: var(--pink);
      padding-left: 6px;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: 2px solid #333;
      color: #888;
      font-size: 13.5px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.05em;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .hero h1 { font-size: 60px; letter-spacing: -2px; }
      .hero-visual { height: 440px; }
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
      .section-header h2 { font-size: 36px; }
    }

    @media (max-width: 992px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .hero-grid { grid-template-columns: 1fr; }
      .hero-visual { height: 380px; margin-top: 20px; }
      .hero h1 { font-size: 52px; }
      .search-wrap { min-width: 160px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 240px; border-right: none; border-bottom: var(--border); }
      .deal-wrap .deal-content { padding: 36px 32px; }
      .newsletter-wrap { padding: 40px 32px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
    }

    @media (max-width: 768px) {
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .hero h1 { font-size: 40px; letter-spacing: -1.5px; }
      .section-header h2 { font-size: 30px; letter-spacing: -1px; }
      .deal-wrap .deal-content h3 { font-size: 32px; }
      .deal-wrap .deal-content .price-big { font-size: 36px; }
      .timer-box { min-width: 58px; padding: 10px 12px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 28px; }
      .hero-stats { gap: 18px; }
      .stat-item .num { font-size: 24px; }
      .brand { font-size: 22px; }
      .brand .logo-box { width: 36px; height: 36px; font-size: 16px; }
      .search-wrap { display: none; }
      .header-inner { gap: 12px; }
    }

    @media (max-width: 480px) {
      .container { padding: 0 16px; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
      .hero { padding: 20px 0; }
      .hero h1 { font-size: 32px; letter-spacing: -1px; }
      .hero p.lede { font-size: 15.5px; }
      .hero-visual { height: 300px; }
      .section { padding: 48px 0 24px; }
      .section-header h2 { font-size: 26px; }
      .deal-wrap .deal-content { padding: 26px 22px; }
      .newsletter-wrap { padding: 28px 20px; }
      .newsletter-wrap .text h3 { font-size: 26px; }
      .product-card .body { padding: 12px 12px 8px; }
      .product-card h5 { font-size: 13.5px; }
      .product-card .price { font-size: 16px; }
      .product-card .footer { padding: 0 12px 12px; }
      .product-card .add-btn { font-size: 11.5px; padding: 10px; }
      .cat-card { padding: 16px 8px; }
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 17px; }
      .cat-card h4 { font-size: 12px; }
      .icon-btn { width: 40px; height: 40px; font-size: 15px; border-radius: 10px; }
      .cart-count { width: 20px; height: 20px; font-size: 11px; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="header">
    <div class="marquee">
      <div class="marquee-track">
        <span><i class="fas fa-bolt"></i> Free shipping over $50</span>
        <span><i class="fas fa-star"></i> New drops every Friday</span>
        <span><i class="fas fa-fire"></i> 30-day easy returns</span>
        <span><i class="fas fa-gift"></i> Members get 15% off</span>
        <span><i class="fas fa-bolt"></i> Free shipping over $50</span>
        <span><i class="fas fa-star"></i> New drops every Friday</span>
        <span><i class="fas fa-fire"></i> 30-day easy returns</span>
        <span><i class="fas fa-gift"></i> Members get 15% off</span>
      </div>
    </div>

    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:14px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <span class="logo-box"><i class="fas fa-bolt"></i></span>
          <span>PULSE<span class="bang">!</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-shapes"></i> Shop</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Sale</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-magnifying-glass"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-bag-shopping"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-shapes"></i> Shop</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Sale</a></li>
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
    <section class="hero">
      <div class="container">
        <div class="hero-grid">
          <div class="hero-text">
            <div class="hero-badge"><i class="fas fa-bolt"></i> New drop · SS26</div>
            <h1>Shop <span class="highlight">loud.</span><br>Live <span class="outline">bright.</span></h1>
            <p class="lede">Big energy, bold colours, and gear that actually sparks joy. No boring basics. Ever.</p>
            <div class="hero-cta">
              <button class="btn btn-pink btn-lg" id="shopNow"><i class="fas fa-arrow-right"></i> Shop the drop</button>
              <button class="btn btn-white btn-lg" id="exploreDeals"><i class="fas fa-bolt"></i> Flash sale</button>
            </div>
            <div class="hero-stats">
              <div class="stat-item">
                <div class="num">12K+</div>
                <div class="label">Happy customers</div>
              </div>
              <div class="stat-item">
                <div class="num">4.9★</div>
                <div class="label">Average rating</div>
              </div>
              <div class="stat-item">
                <div class="num">48h</div>
                <div class="label">Fast delivery</div>
              </div>
            </div>
          </div>

          <div class="hero-visual">
            <div class="hero-star s1"><i class="fas fa-star"></i></div>
            <div class="hero-star s2"><i class="fas fa-star"></i></div>

            <div class="hero-card main">
              <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80" alt="Featured product">
            </div>
            <div class="hero-card secondary">
              <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80" alt="Second product">
            </div>

            <div class="hero-sticker one"><i class="fas fa-bolt"></i> Hot right now</div>
            <div class="hero-sticker two"><i class="fas fa-fire"></i> Only $49</div>
          </div>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="cat-title">Pick your <span class="em">vibe</span></h2>
            <p>Six categories. Zero boring.</p>
          </div>
          <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="prod-title">Trending <span class="em">now</span></h2>
            <p>The stuff everyone's talking about</p>
          </div>
          <a href="#" class="view-all">See everything <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- FLASH DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="deals-title">⚡ Flash <span class="em">deal</span></h2>
            <p>One product. One wild price. Tick tock.</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited drop</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin. Fast. Silent. The laptop that makes everything else feel slow.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> left — don't sleep on it</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
            </div>
            <button class="btn btn-pink btn-lg" id="buyDeal"><i class="fas fa-cart-plus"></i> Grab it now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="test-title">Real <span class="em">talk</span></h2>
            <p>What people are actually saying</p>
          </div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text">
            <h3 id="news-title">Get in.</h3>
            <p>Drops, deals, and chaos — straight to your inbox. No spam. Ever.</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="your@email.com" aria-label="Email" required />
            <button class="btn btn-black" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Sign me up</button>
            <div id="newsletterMsg"></div>
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
          <div class="brand">
            <span class="logo-box"><i class="fas fa-bolt"></i></span>
            <span>PULSE<span class="bang">!</span></span>
          </div>
          <p>Big energy gear for people who don't do boring. Built loud, delivered fast, loved hard.</p>
          <div class="socials">
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Shop</h5>
          <ul>
            <li><a href="#">New drops</a></li>
            <li><a href="#">Best sellers</a></li>
            <li><a href="#">Sale</a></li>
            <li><a href="#">Gift cards</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Help</h5>
          <ul>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">FAQs</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Sustainability</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <span id="year"></span> PULSE! — Made loud. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'sneakers', name: 'Sneakers', icon: 'fa-shoe-prints', count: 42 },
      { id: 'tech', name: 'Tech', icon: 'fa-headphones', count: 28 },
      { id: 'streetwear', name: 'Streetwear', icon: 'fa-tshirt', count: 56 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-glasses', count: 31 },
      { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad', count: 24 },
      { id: 'skate', name: 'Skate', icon: 'fa-person-skating', count: 19 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'Air Max Voltage 270', price: 149, oldPrice: 189, rating: 5, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80',
        category: 'Sneakers' },
      { id: 2, title: 'Noise-Cancel Pro Buds', price: 199, rating: 5, reviews: 156, badge: 'New',
        img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80',
        category: 'Tech' },
      { id: 3, title: 'Oversized Graphic Hoodie', price: 79, oldPrice: 99, rating: 4, reviews: 89, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80',
        category: 'Streetwear' },
      { id: 4, title: 'Retro Square Shades', price: 55, rating: 4, reviews: 67, badge: '',
        img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 5, title: 'Pro Controller · Neon', price: 89, rating: 5, reviews: 142, badge: 'New',
        img: 'https://images.unsplash.com/photo-1592840496694-26d035b52b48?auto=format&fit=crop&w=600&q=80',
        category: 'Gaming' },
      { id: 6, title: 'Classic Skate Deck 8.0"', price: 65, rating: 5, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1547447134-cd3f5c716030?auto=format&fit=crop&w=600&q=80',
        category: 'Skate' },
      { id: 7, title: 'Chunky Platform Sneaks', price: 129, oldPrice: 159, rating: 4, reviews: 128, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&w=600&q=80',
        category: 'Sneakers' },
      { id: 8, title: 'Smart Fitness Watch', price: 179, rating: 5, reviews: 96, badge: '',
        img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80',
        category: 'Tech' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava M.', role: 'Verified buyer',
        avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
        text: 'Ordered Friday, wore them Saturday. Quality is unreal for the price.',
        stars: 5 },
      { name: 'Marcus L.', role: 'Repeat customer',
        avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
        text: 'PULSE is my go-to. Every drop feels fresh and the shipping is stupid fast.',
        stars: 5 },
      { name: 'Zoe C.', role: 'Sneakerhead',
        avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80',
        text: 'The kicks are fire and the packaging is a whole aesthetic. Obsessed.',
        stars: 5 },
      { name: 'Jay W.', role: 'Tech buyer',
        avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
        text: 'Buds are legit. Sound quality matches stuff twice the price.',
        stars: 4 }
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
          <div class="count">${cat.count} items</div>
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
          `<p style="grid-column:1/-1;text-align:center;padding:48px;font-weight:700;text-transform:uppercase;">No products found — try again.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        let badgeClass = '';
        if (p.badge === 'Sale') badgeClass = 'sale';
        else if (p.badge === 'New') badgeClass = 'new';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row">
              <span class="price">$${p.price}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
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
          <div class="quote-mark">“</div>
          <div class="stars">${stars}</div>
          <blockquote>${escapeHtml(t.text)}</blockquote>
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
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.4) rotate(8deg)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1) rotate(0)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> In the bag!';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1400);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.background = 'var(--pink)';
      cartBtn.style.color = '#fff';
      setTimeout(() => { cartBtn.style.background = ''; cartBtn.style.color = ''; }, 400);
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
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Bagged it!';
      this.style.background = 'var(--lime)';
      this.style.color = 'var(--ink)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
        this.style.color = '';
      }, 1500);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = '⚠️ Enter a valid email.';
        newsletterMsg.style.color = '#c0392b';
        return;
      }
      newsletterMsg.textContent = '🎉 You\'re in! Check your inbox.';
      newsletterMsg.style.color = '#111';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.textContent = ''; }, 3500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
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

    console.log('⚡ PULSE! — loud UI loaded.');
  </script>
</body>
</html>
