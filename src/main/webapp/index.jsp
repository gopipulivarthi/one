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
      .mobile-toggle { display:
