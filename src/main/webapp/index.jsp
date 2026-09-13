<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Luna · Modern Boutique Shop</title>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,400;9..40,500;9..40,600;9..40,700&family=Fraunces:opsz,wght@9..144,600;9..144,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <style>
    /* ========== BOUTIQUE SOFT PALETTE ========== */
    :root {
      --bg: #fdfbf9;
      --surface: #ffffff;
      --surface-warm: #f9f5f0;
      --ink: #2c2420;
      --ink-soft: #6b5e57;
      --ink-muted: #a89b93;
      --primary: #7a9e8e;       /* sage green */
      --primary-soft: #e8f0ec;
      --primary-dark: #5e8575;
      --peach: #f0b8a0;         /* accent warm */
      --peach-soft: #fdeee7;
      --peach-dark: #d99a82;
      --gold: #e8c468;
      --shadow-soft: 0 4px 20px rgba(124, 110, 100, 0.05);
      --shadow-hover: 0 12px 36px rgba(124, 110, 100, 0.10);
      --radius-xl: 32px;
      --radius-lg: 24px;
      --radius-md: 18px;
      --radius-sm: 14px;
      --transition: all 0.28s cubic-bezier(0.34, 1.2, 0.64, 1);
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
      font-family: 'DM Sans', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.55;
      font-size: 15px;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
      display: block;
    }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }

    input {
      font-family: inherit;
    }

    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 15px;
      letter-spacing: -0.01em;
      transition: var(--transition);
      border: 1.5px solid transparent;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--ink);
      color: #fff;
      border-color: var(--ink);
    }

    .btn-primary:hover {
      background: var(--primary-dark);
      border-color: var(--primary-dark);
      transform: translateY(-3px);
      box-shadow: 0 12px 24px rgba(94, 133, 117, 0.25);
    }

    .btn-peach {
      background: var(--peach);
      color: var(--ink);
      border-color: var(--peach);
    }

    .btn-peach:hover {
      background: var(--peach-dark);
      border-color: var(--peach-dark);
      transform: translateY(-3px);
      box-shadow: 0 12px 24px rgba(217, 154, 130, 0.35);
    }

    .btn-outline {
      background: transparent;
      color: var(--ink);
      border-color: rgba(44, 36, 32, 0.15);
    }

    .btn-outline:hover {
      background: var(--ink);
      color: #fff;
      border-color: var(--ink);
      transform: translateY(-3px);
    }

    .btn-glass {
      background: rgba(255, 255, 255, 0.7);
      color: var(--ink);
      border-color: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(10px);
    }

    .btn-glass:hover {
      background: #fff;
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(0, 0, 0, 0.08);
    }

    .btn-sm {
      padding: 10px 22px;
      font-size: 14px;
    }

    /* ========== HEADER ========== */
    .header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(253, 251, 249, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(124, 110, 100, 0.06);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 14px 0;
      min-height: 76px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Fraunces', serif;
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.5px;
      color: var(--ink);
      flex-shrink: 0;
    }

    .brand i {
      font-size: 28px;
      color: var(--primary);
    }

    .brand .dot {
      color: var(--peach);
    }

    .main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }

    .main-nav li a {
      display: flex;
      align-items: center;
      gap: 7px;
      padding: 10px 18px;
      border-radius: 999px;
      font-weight: 500;
      font-size: 14.5px;
      color: var(--ink-soft);
      transition: var(--transition);
    }

    .main-nav li a:hover,
    .main-nav li a.active {
      background: var(--surface-warm);
      color: var(--ink);
    }

    .main-nav li a i {
      font-size: 14px;
      opacity: 0.7;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--ink-soft);
      transition: var(--transition);
      position: relative;
      background: transparent;
    }

    .icon-btn:hover {
      background: var(--surface-warm);
      color: var(--ink);
      transform: translateY(-2px);
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--peach);
      color: var(--ink);
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
      transition: var(--transition);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface-warm);
      border-radius: 999px;
      padding: 0 8px 0 20px;
      transition: var(--transition);
      border: 1.5px solid transparent;
      min-width: 240px;
    }

    .search-wrap:focus-within {
      border-color: var(--primary);
      background: #fff;
      box-shadow: 0 0 0 5px rgba(122, 158, 142, 0.1);
    }

    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-size: 14.5px;
      color: var(--ink);
    }

    .search-wrap input::placeholder {
      color: var(--ink-muted);
    }

    .search-wrap button {
      padding: 8px;
      border-radius: 50%;
      color: var(--ink-soft);
      font-size: 15px;
      transition: var(--transition);
    }

    .search-wrap button:hover {
      color: var(--primary);
    }

    .mobile-toggle {
      display: none;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      font-size: 20px;
      background: var(--surface-warm);
      color: var(--ink);
      transition: var(--transition);
    }

    #mobileMenu {
      display: none;
      background: var(--bg);
      border-top: 1px solid rgba(124, 110, 100, 0.06);
      padding: 14px 0 24px;
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
      gap: 14px;
      padding: 14px 20px;
      border-radius: 16px;
      font-weight: 500;
      color: var(--ink-soft);
      transition: var(--transition);
    }

    #mobileMenu ul li a:hover {
      background: var(--surface-warm);
      color: var(--ink);
    }

    #mobileMenu ul li a i {
      width: 22px;
      color: var(--ink-muted);
    }

    /* ========== HERO ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 60px 0;
      border-radius: var(--radius-xl);
      overflow: hidden;
      margin: 24px 24px 0;
      background: linear-gradient(135deg, #7a9e8e 0%, #a8c4b8 40%, #f0c8b4 100%);
    }

    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.28;
      mix-blend-mode: soft-light;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(255, 255, 255, 0.75);
      color: var(--ink);
      padding: 8px 20px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 13.5px;
      letter-spacing: 0.02em;
      margin-bottom: 24px;
      backdrop-filter: blur(8px);
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.04);
    }

    .hero .eyebrow i {
      color: var(--peach-dark);
    }

    .hero h1 {
      font-family: 'Fraunces', serif;
      font-size: 58px;
      font-weight: 700;
      color: var(--ink);
      line-height: 1.1;
      letter-spacing: -1.5px;
      max-width: 680px;
      margin-bottom: 18px;
    }

    .hero h1 em {
      font-style: normal;
      color: #fff;
      text-shadow: 0 4px 24px rgba(44, 36, 32, 0.15);
    }

    .hero p {
      color: var(--ink-soft);
      font-size: 17px;
      max-width: 480px;
      margin-bottom: 32px;
      line-height: 1.7;
    }

    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* ========== TRUST BAR ========== */
    .trust-bar {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
      background: var(--surface);
      border-radius: var(--radius-lg);
      padding: 28px 36px;
      margin: 24px 24px 0;
      box-shadow: var(--shadow-soft);
    }

    .trust-item {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .trust-item i {
      font-size: 24px;
      color: var(--primary);
      width: 40px;
      text-align: center;
    }

    .trust-item .t-title {
      font-weight: 700;
      font-size: 14.5px;
      color: var(--ink);
    }

    .trust-item .t-sub {
      font-size: 13px;
      color: var(--ink-muted);
    }

    /* ========== SECTION ========== */
    .section {
      padding: 64px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 36px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-family: 'Fraunces', serif;
      font-size: 34px;
      font-weight: 700;
      letter-spacing: -0.8px;
      color: var(--ink);
    }

    .section-header p {
      color: var(--ink-muted);
      margin-top: 6px;
      font-size: 15.5px;
    }

    .view-all {
      font-weight: 600;
      color: var(--primary-dark);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 14.5px;
      transition: var(--transition);
      white-space: nowrap;
    }

    .view-all:hover {
      gap: 14px;
      color: var(--primary);
    }

    /* ========== CATEGORIES ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }

    .cat-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      padding: 28px 16px;
      text-align: center;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      cursor: pointer;
      border: 1.5px solid transparent;
    }

    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--primary-soft);
    }

    .cat-card .icon-wrap {
      width: 62px;
      height: 62px;
      border-radius: 22px;
      background: var(--primary-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 26px;
      color: var(--primary-dark);
      transition: var(--transition);
    }

    .cat-card:hover .icon-wrap {
      background: var(--primary);
      color: #fff;
      transform: rotate(-4deg) scale(1.05);
    }

    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
      color: var(--ink);
    }

    .cat-card .count {
      font-size: 13px;
      color: var(--ink-muted);
      margin-top: 2px;
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1.5px solid transparent;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--peach-soft);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface-warm);
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
      top: 14px;
      left: 14px;
      background: var(--peach);
      color: var(--ink);
      padding: 6px 14px;
      border-radius: 999px;
      font-size: 11.5px;
      font-weight: 700;
      letter-spacing: 0.03em;
      text-transform: uppercase;
    }

    .product-card .badge.new {
      background: var(--primary);
      color: #fff;
    }

    .product-card .badge.sale {
      background: var(--gold);
      color: var(--ink);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--ink-soft);
      transition: var(--transition);
      backdrop-filter: blur(6px);
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.04);
    }

    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--peach-dark);
      transform: scale(1.12);
    }

    .product-card .body {
      padding: 18px 20px 14px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    .product-card .category-tag {
      font-size: 12px;
      color: var(--ink-muted);
      text-transform: uppercase;
      letter-spacing: 0.06em;
      font-weight: 600;
    }

    .product-card h5 {
      font-size: 15.5px;
      font-weight: 600;
      line-height: 1.35;
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
      font-weight: 700;
      font-size: 19px;
      color: var(--ink);
    }

    .product-card .old-price {
      color: var(--ink-muted);
      text-decoration: line-through;
      font-size: 14px;
    }

    .product-card .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: var(--gold);
      margin-top: 2px;
    }

    .product-card .rating span {
      color: var(--ink-muted);
      font-weight: 400;
    }

    .product-card .footer {
      padding: 0 20px 20px;
      display: flex;
      gap: 10px;
    }

    .product-card .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: var(--surface-warm);
      color: var(--ink);
      font-weight: 600;
      font-size: 14.5px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .product-card .add-btn:hover {
      background: var(--primary);
      color: #fff;
      transform: scale(1.02);
    }

    .product-card .add-btn.added {
      background: var(--primary-dark);
      color: #fff;
    }

    /* ========== PROMO BANNER ========== */
    .promo-strip {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 20px;
      margin-top: 12px;
    }

    .promo-card {
      border-radius: var(--radius-lg);
      padding: 40px 36px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      min-height: 200px;
      position: relative;
      overflow: hidden;
    }

    .promo-card.sage {
      background: linear-gradient(135deg, var(--primary-soft), #d4e6de);
    }

    .promo-card.peach {
      background: linear-gradient(135deg, var(--peach-soft), #fbddd0);
    }

    .promo-card .promo-tag {
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      color: var(--primary-dark);
      margin-bottom: 8px;
    }

    .promo-card.peach .promo-tag {
      color: var(--peach-dark);
    }

    .promo-card h3 {
      font-family: 'Fraunces', serif;
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: var(--ink);
      margin-bottom: 6px;
    }

    .promo-card p {
      color: var(--ink-soft);
      font-size: 14.5px;
      margin-bottom: 16px;
      max-width: 280px;
    }

    .promo-card .btn {
      align-self: flex-start;
      padding: 11px 26px;
      font-size: 14px;
    }

    /* ========== FLASH DEAL ========== */
    .deal-wrap {
      display: flex;
      background: var(--surface);
      border-radius: var(--radius-xl);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
    }

    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: var(--surface-warm);
      min-height: 340px;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: var(--gold);
      color: var(--ink);
      padding: 6px 18px;
      border-radius: 999px;
      font-size: 12.5px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      align-self: flex-start;
      margin-bottom: 16px;
    }

    .deal-wrap .deal-content h3 {
      font-family: 'Fraunces', serif;
      font-size: 32px;
      font-weight: 700;
      letter-spacing: -0.5px;
      margin-bottom: 8px;
      color: var(--ink);
    }

    .deal-wrap .deal-content .desc {
      color: var(--ink-soft);
      margin-bottom: 18px;
      font-size: 15.5px;
    }

    .deal-wrap .deal-content .price-big {
      font-size: 34px;
      font-weight: 700;
      color: var(--ink);
      font-family: 'Fraunces', serif;
    }

    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--ink-muted);
      text-decoration: line-through;
      margin-left: 10px;
      font-family: 'DM Sans', sans-serif;
    }

    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--ink-soft);
      margin: 6px 0 18px;
    }

    .deal-wrap .deal-content .stock strong {
      color: var(--peach-dark);
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 16px 0 24px;
    }

    .timer-box {
      background: var(--ink);
      color: #fff;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 70px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
      font-family: 'Fraunces', serif;
    }

    .timer-box .label {
      font-size: 10.5px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.08em;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--primary-soft);
      border-radius: 999px;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: var(--surface);
      border-radius: var(--radius-lg);
      padding: 28px 30px;
      box-shadow: var(--shadow-soft);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1.5px solid transparent;
    }

    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      border-color: var(--primary-soft);
    }

    .testimonial-card .stars {
      color: var(--gold);
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 12px;
    }

    .testimonial-card blockquote {
      font-size: 15.5px;
      line-height: 1.65;
      color: var(--ink-soft);
      margin-bottom: 18px;
      font-style: italic;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .testimonial-card .author .avatar {
      width: 46px;
      height: 46px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface-warm);
    }

    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14.5px;
      color: var(--ink);
    }

    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--ink-muted);
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--ink) 0%, #4a3f39 100%);
      border-radius: var(--radius-xl);
      padding: 56px 60px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      position: relative;
      overflow: hidden;
    }

    .newsletter-wrap::before {
      content: '';
      position: absolute;
      top: -60px;
      right: -60px;
      width: 280px;
      height: 280px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(240, 184, 160, 0.25), transparent 70%);
    }

    .newsletter-wrap .text {
      position: relative;
      z-index: 1;
    }

    .newsletter-wrap .text h3 {
      font-family: 'Fraunces', serif;
      font-size: 30px;
      font-weight: 700;
      letter-spacing: -0.5px;
      margin-bottom: 6px;
    }

    .newsletter-wrap .text p {
      opacity: 0.75;
      font-size: 15.5px;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
      position: relative;
      z-index: 1;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 15px 24px;
      border-radius: 999px;
      border: 1.5px solid rgba(255, 255, 255, 0.15);
      font-size: 15px;
      background: rgba(255, 255, 255, 0.08);
      color: #fff;
      transition: var(--transition);
      outline: none;
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }

    .newsletter-wrap form input:focus {
      border-color: var(--peach);
      background: rgba(255, 255, 255, 0.14);
      box-shadow: 0 0 0 5px rgba(240, 184, 160, 0.15);
    }

    .newsletter-wrap form .btn {
      background: var(--peach);
      color: var(--ink);
      border-color: var(--peach);
      padding: 15px 34px;
    }

    .newsletter-wrap form .btn:hover {
      background: var(--peach-dark);
      border-color: var(--peach-dark);
      transform: translateY(-2px);
    }

    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      width: 100%;
      position: relative;
      z-index: 1;
    }

    /* ========== FOOTER ========== */
    footer {
      padding: 56px 0 32px;
      border-top: 1px solid rgba(124, 110, 100, 0.08);
      margin-top: 24px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .footer-brand .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }

    .footer-brand p {
      color: var(--ink-muted);
      font-size: 14.5px;
      max-width: 300px;
      line-height: 1.7;
    }

    .socials {
      display: flex;
      gap: 10px;
      margin-top: 18px;
    }

    .socials a {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: var(--surface-warm);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: var(--transition);
      font-size: 16px;
    }

    .socials a:hover {
      background: var(--primary);
      color: #fff;
      transform: translateY(-3px);
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14.5px;
      margin-bottom: 16px;
      color: var(--ink);
      letter-spacing: -0.2px;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .footer-grid .col ul li a {
      color: var(--ink-muted);
      font-size: 14.5px;
      transition: var(--transition);
    }

    .footer-grid .col ul li a:hover {
      color: var(--primary-dark);
    }

    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      border-top: 1px solid rgba(124, 110, 100, 0.08);
      color: var(--ink-muted);
      font-size: 13.5px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
      .hero h1 { font-size: 48px; }
    }

    @media (max-width: 992px) {
      .hero { min-height: 440px; margin: 20px 20px 0; padding: 44px 0; }
      .hero h1 { font-size: 40px; }
      .trust-bar { grid-template-columns: repeat(2, 1fr); padding: 24px 28px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 260px; }
      .deal-wrap .deal-content { padding: 32px 32px; }
      .newsletter-wrap { padding: 40px 32px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .promo-strip { grid-template-columns: 1fr; }
      .search-wrap { min-width: 160px; }
      .main-nav li a { padding: 10px 14px; font-size: 14px; }
    }

    @media (max-width: 768px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 15px; }
      .section-header h2 { font-size: 26px; }
      .deal-wrap .deal-content h3 { font-size: 24px; }
      .deal-wrap .deal-content .price-big { font-size: 28px; }
      .timer-box { min-width: 56px; padding: 8px 10px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 28px; }
      .testimonial-card { flex: 0 0 300px; }
      .brand { font-size: 22px; }
      .brand i { font-size: 24px; }
      .search-wrap { min-width: 130px; padding: 0 6px 0 16px; }
      .icon-btn { width: 40px; height: 40px; font-size: 16px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
    }

    @media (max-width: 480px) {
      .container { padding: 0 16px; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
      .hero { margin: 12px 12px 0; min-height: 340px; padding: 32px 0; border-radius: var(--radius-lg); }
      .hero h1 { font-size: 26px; letter-spacing: -0.8px; }
      .hero .eyebrow { font-size: 12px; padding: 6px 14px; }
      .trust-bar { margin: 16px 12px 0; padding: 20px 18px; gap: 14px; }
      .trust-item i { font-size: 20px; width: 32px; }
      .trust-item .t-title { font-size: 13px; }
      .trust-item .t-sub { font-size: 11.5px; }
      .deal-wrap .deal-content { padding: 24px 20px; }
      .newsletter-wrap { padding: 28px 20px; }
      .newsletter-wrap .text h3 { font-size: 22px; }
      .product-card .body { padding: 12px 12px 8px; }
      .product-card h5 { font-size: 13.5px; }
      .product-card .price { font-size: 16px; }
      .product-card .footer { padding: 0 12px 14px; }
      .product-card .add-btn { font-size: 12.5px; padding: 9px; }
      .cat-card { padding: 18px 10px; }
      .cat-card .icon-wrap { width: 48px; height: 48px; font-size: 20px; border-radius: 16px; }
      .cat-card h4 { font-size: 13px; }
      .cat-card .count { font-size: 11.5px; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="header">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:14px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-leaf"></i>
          <span>Luna<span class="dot">.</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-shapes"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Sale</a></li>
          <li><a href="#testimonials"><i class="fas fa-comment-heart"></i> Stories</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search our boutique..." aria-label="Search" />
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

    <!-- Mobile Menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-shapes"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Sale</a></li>
          <li><a href="#testimonials"><i class="fas fa-comment-heart"></i> Stories</a></li>
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
        <div class="eyebrow"><i class="fas fa-sparkles"></i> Spring / Summer 2026</div>
        <h1>Things you'll love,<br><em>curated for living.</em></h1>
        <p>Slow-made essentials, thoughtful design, and everyday objects that bring a little more joy into your home.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Collection</button>
          <button class="btn btn-glass" id="exploreDeals"><i class="fas fa-clock"></i> See Flash Sale</button>
        </div>
      </div>
    </section>

    <!-- TRUST BAR -->
    <div class="container" style="margin-top: 24px;">
      <div class="trust-bar">
        <div class="trust-item">
          <i class="fas fa-truck-fast"></i>
          <div>
            <div class="t-title">Free shipping</div>
            <div class="t-sub">On orders over $50</div>
          </div>
        </div>
        <div class="trust-item">
          <i class="fas fa-rotate-left"></i>
          <div>
            <div class="t-title">30-day returns</div>
            <div class="t-sub">No questions asked</div>
          </div>
        </div>
        <div class="trust-item">
          <i class="fas fa-shield-heart"></i>
          <div>
            <div class="t-title">Secure checkout</div>
            <div class="t-sub">256-bit SSL encryption</div>
          </div>
        </div>
        <div class="trust-item">
          <i class="fas fa-headset"></i>
          <div>
            <div class="t-title">24/7 support</div>
            <div class="t-sub">Real humans, always</div>
          </div>
        </div>
      </div>
    </div>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="cat-title">Shop by collection</h2>
            <p>Little corners of the shop, thoughtfully arranged</p>
          </div>
          <a href="#" class="view-all">View all collections <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="prod-title">Loved by our community</h2>
            <p>Handpicked favourites, fresh this week</p>
          </div>
          <a href="#" class="view-all">Browse all products <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PROMO STRIP -->
    <div class="container">
      <div class="promo-strip">
        <div class="promo-card sage">
          <span class="promo-tag">New in</span>
          <h3>The linen edit</h3>
          <p>Breathable, beautiful, and made to last — explore our newest natural fibre pieces.</p>
          <button class="btn btn-outline btn-sm" onclick="document.getElementById('products').scrollIntoView({behavior:'smooth'})">Explore <i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="promo-card peach">
          <span class="promo-tag">Members only</span>
          <h3>Get 15% off</h3>
          <p>Join the Luna circle for early access, birthday treats, and a little welcome gift.</p>
          <button class="btn btn-outline btn-sm" onclick="document.getElementById('newsletterEmail').focus()">Join now <i class="fas fa-arrow-right"></i></button>
        </div>
      </div>
    </div>

    <!-- FLASH DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="deals-title">⚡ Flash deal</h2>
            <p>One special piece, one very good price</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and quietly powerful — the M2 chip makes everyday magic feel effortless.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> left — going quickly</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box">
                <div class="num" id="dealDays">0</div>
                <div class="label">Days</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealHours">00</div>
                <div class="label">Hrs</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealMinutes">00</div>
                <div class="label">Min</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealSeconds">00</div>
                <div class="label">Sec</div>
              </div>
            </div>
            <button class="btn btn-peach" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to bag</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div>
            <h2 id="test-title">Kind words from kind people</h2>
            <p>Real reviews, real homes, real happy customers</p>
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
            <h3 id="news-title">Come sit with us ☕</h3>
            <p>Join the Luna letter for slow living inspiration & early access to new arrivals.</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
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
            <i class="fas fa-leaf"></i>
            <span>Luna<span class="dot">.</span></span>
          </div>
          <p>A small-batch boutique for everyday living. Slow-made, thoughtfully chosen, and made to be loved.</p>
          <div class="socials">
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest-p"></i></a>
            <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Shop</h5>
          <ul>
            <li><a href="#">New arrivals</a></li>
            <li><a href="#">Best sellers</a></li>
            <li><a href="#">Sale</a></li>
            <li><a href="#">Gift cards</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Help</h5>
          <ul>
            <li><a href="#">Contact us</a></li>
            <li><a href="#">Shipping & returns</a></li>
            <li><a href="#">FAQs</a></li>
            <li><a href="#">Size guide</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>About</h5>
          <ul>
            <li><a href="#">Our story</a></li>
            <li><a href="#">Sustainability</a></li>
            <li><a href="#">Journal</a></li>
            <li><a href="#">Careers</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <span id="year"></span> Luna Boutique. Made with care.
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'home', name: 'Home & Living', icon: 'fa-couch', count: 32 },
      { id: 'fashion', name: 'Fashion', icon: 'fa-shirt', count: 48 },
      { id: 'beauty', name: 'Beauty', icon: 'fa-spa', count: 26 },
      { id: 'tech', name: 'Tech', icon: 'fa-headphones', count: 19 },
      { id: 'stationery', name: 'Stationery', icon: 'fa-pen-fancy', count: 37 },
      { id: 'gifting', name: 'Gifting', icon: 'fa-gift', count: 22 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'Linen Throw Blanket', price: 89, oldPrice: 109, rating: 5, reviews: 128, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1580301762395-1e5b3c1b5b1f?auto=format&fit=crop&w=600&q=80',
        category: 'Home & Living' },
      { id: 2, title: 'Ceramic Pour-Over Set', price: 64, rating: 5, reviews: 86, badge: 'New',
        img: 'https://images.unsplash.com/photo-1517256064527-09c73fc73e38?auto=format&fit=crop&w=600&q=80',
        category: 'Home & Living' },
      { id: 3, title: 'Botanical Face Serum', price: 42, oldPrice: 52, rating: 4, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?auto=format&fit=crop&w=600&q=80',
        category: 'Beauty' },
      { id: 4, title: 'Wireless Earbuds · Sage', price: 129, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80',
        category: 'Tech' },
      { id: 5, title: 'Hand-thrown Stoneware Mug', price: 38, rating: 5, reviews: 142, badge: 'New',
        img: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80',
        category: 'Home & Living' },
      { id: 6, title: 'Recycled Cotton Tote', price: 34, oldPrice: 44, rating: 5, reviews: 89, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1591561954557-26941169b49e?auto=format&fit=crop&w=600&q=80',
        category: 'Fashion' },
      { id: 7, title: 'Linen Journal · A5', price: 28, rating: 4, reviews: 67, badge: '',
        img: 'https://images.unsplash.com/photo-1531346878377-a5be20888e57?auto=format&fit=crop&w=600&q=80',
        category: 'Stationery' },
      { id: 8, title: 'Soy Candle · Fig & Cedar', price: 32, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1602874801007-aa2f8b7b1d3f?auto=format&fit=crop&w=600&q=80',
        category: 'Home & Living' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava Martin', role: 'Verified Buyer',
        avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
        text: 'The linen throw is even lovelier in person — soft, weighty, and the colour is perfect.',
        stars: 5 },
      { name: 'Michael Lee', role: 'Frequent Shopper',
        avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
        text: 'Beautiful packaging and speedy delivery. Felt like opening a gift to myself.',
        stars: 5 },
      { name: 'Sophia Chen', role: 'Designer',
        avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80',
        text: 'Luna has become my go-to for thoughtful gifts. Everything feels considered.',
        stars: 5 },
      { name: 'James Wilson', role: 'Tech Enthusiast',
        avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
        text: 'The earbuds are excellent and the customer care was genuinely kind. Rare these days.',
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
    // RENDER FUNCTIONS
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
          `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--ink-muted);">No products found — try another search.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        let badgeClass = '';
        if (p.badge === 'Sale') badgeClass = 'sale';
        else if (p.badge === 'New') badgeClass = 'new';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
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
              <span class="price">$${p.price.toLocaleString()}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to bag</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id, this);
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
          <div class="stars">${stars}</div>
          <blockquote>“${escapeHtml(t.text)}”</blockquote>
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
    // UTILITIES
    // ============================================================
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
      } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.4)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1500);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.color = 'var(--peach-dark)';
      setTimeout(() => cartBtn.style.color = '', 400);
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
    // EVENT BINDINGS
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
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added to bag!';
      this.style.background = 'var(--primary)';
      this.style.borderColor = 'var(--primary)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
        this.style.borderColor = '';
      }, 1600);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ffb3b3';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Welcome to the Luna circle!';
      newsletterMsg.style.color = '#c6e8d8';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your bag has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
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
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('🌸 Luna Boutique — a friendly, soft UI loaded.');
  </script>
</body>
</html>
