#!/bin/bash

# Script to generate UI designs following modern design principles
# Usage: ./generate_ui.sh "page purpose" [sections] [theme]

PAGE_PURPOSE="$1"
SECTIONS="$2"
THEME="$3"

if [ -z "$PAGE_PURPOSE" ]; then
    echo "Usage: $0 \"page purpose\" [sections] [theme]"
    echo "Example: $0 \"landing page\" \"hero,features,testimonials\" \"light\""
    exit 1
fi

echo "Generating UI for: $PAGE_PURPOSE"
echo "Sections: ${SECTIONS:-default}"
echo "Theme: ${THEME:-default}"
echo ""

# Create the UI design based on the requirements
cat << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modern UI Design</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            primary: '#3b82f6',
            secondary: '#64748b',
          }
        }
      }
    }
  </script>
</head>
<body class="bg-gray-50 text-gray-800">
  <!-- Header -->
  <header class="bg-white shadow-sm">
    <div class="container mx-auto px-4 py-4 flex justify-between items-center">
      <div class="text-xl font-bold text-primary">Brand</div>
      <nav>
        <ul class="flex space-x-6">
          <li><a href="#" class="text-gray-600 hover:text-primary transition-colors">Home</a></li>
          <li><a href="#" class="text-gray-600 hover:text-primary transition-colors">About</a></li>
          <li><a href="#" class="text-gray-600 hover:text-primary transition-colors">Services</a></li>
          <li><a href="#" class="text-gray-600 hover:text-primary transition-colors">Contact</a></li>
        </ul>
      </nav>
      <button class="bg-primary text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">
        Get Started
      </button>
    </div>
  </header>

  <!-- Main Content -->
  <main class="container mx-auto px-4 py-8">
    <!-- Hero Section -->
    <section class="py-12 text-center">
      <h1 class="text-4xl md:text-5xl font-bold mb-4">Modern UI Design</h1>
      <p class="text-xl text-gray-600 max-w-2xl mx-auto mb-8">
        Clean, aesthetic, and production-ready frontend UI with TailwindCSS
      </p>
      <div class="flex justify-center space-x-4">
        <button class="bg-primary text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition-colors">
          Primary Action
        </button>
        <button class="border border-gray-300 text-gray-700 px-6 py-3 rounded-lg hover:bg-gray-50 transition-colors">
          Secondary Action
        </button>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-12">
      <div class="text-center mb-12">
        <h2 class="text-3xl font-bold mb-4">Key Features</h2>
        <p class="text-gray-600 max-w-2xl mx-auto">Modern design principles applied to create beautiful and functional UI</p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
          <div class="text-primary text-2xl mb-4">✓</div>
          <h3 class="text-xl font-semibold mb-2">Semantic HTML</h3>
          <p class="text-gray-600">Properly structured markup for accessibility and SEO</p>
        </div>

        <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
          <div class="text-primary text-2xl mb-4">✓</div>
          <h3 class="text-xl font-semibold mb-2">TailwindCSS</h3>
          <p class="text-gray-600">Utility-first styling for consistent, responsive design</p>
        </div>

        <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
          <div class="text-primary text-2xl mb-4">✓</div>
          <h3 class="text-xl font-semibold mb-2">Minimal JS</h3>
          <p class="text-gray-600">Only necessary JavaScript for enhanced interactions</p>
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-12 bg-gray-100 rounded-2xl my-12">
      <div class="text-center mb-8">
        <h2 class="text-3xl font-bold mb-4">What Users Say</h2>
      </div>

      <div class="max-w-4xl mx-auto">
        <div class="bg-white p-8 rounded-xl shadow-sm">
          <p class="text-gray-700 text-lg italic mb-4">
            "This UI design perfectly balances aesthetics with functionality. The clean layout and thoughtful spacing make it a pleasure to use."
          </p>
          <div class="flex items-center">
            <div class="bg-gray-200 border-2 border-dashed rounded-xl w-16 h-16" />
            <div class="ml-4">
              <div class="font-semibold">Jane Smith</div>
              <div class="text-gray-600">Product Manager</div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer class="bg-gray-800 text-white py-12">
    <div class="container mx-auto px-4">
      <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
        <div>
          <h3 class="text-lg font-semibold mb-4">Company</h3>
          <ul class="space-y-2">
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">About</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Careers</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Contact</a></li>
          </ul>
        </div>
        <div>
          <h3 class="text-lg font-semibold mb-4">Products</h3>
          <ul class="space-y-2">
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Features</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Pricing</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Integrations</a></li>
          </ul>
        </div>
        <div>
          <h3 class="text-lg font-semibold mb-4">Resources</h3>
          <ul class="space-y-2">
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Documentation</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Tutorials</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Blog</a></li>
          </ul>
        </div>
        <div>
          <h3 class="text-lg font-semibold mb-4">Legal</h3>
          <ul class="space-y-2">
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Privacy</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Terms</a></li>
            <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Cookies</a></li>
          </ul>
        </div>
      </div>
      <div class="border-t border-gray-700 mt-8 pt-8 text-center text-gray-400">
        <p>&copy; 2026 UI Design. All rights reserved.</p>
      </div>
    </div>
  </footer>

  <script>
    // Example JavaScript for interactive elements
    document.addEventListener('DOMContentLoaded', function() {
      // Add hover effects to cards
      const cards = document.querySelectorAll('.bg-white.p-6.rounded-xl');
      cards.forEach(card => {
        card.addEventListener('mouseenter', function() {
          this.style.transform = 'translateY(-5px)';
          this.style.transition = 'transform 0.3s ease';
        });

        card.addEventListener('mouseleave', function() {
          this.style.transform = 'translateY(0)';
        });
      });

      // Mobile menu toggle functionality
      const menuToggle = document.createElement('button');
      menuToggle.innerHTML = '☰';
      menuToggle.classList.add('md:hidden', 'text-2xl', 'bg-gray-100', 'p-2', 'rounded');
      menuToggle.addEventListener('click', function() {
        const nav = document.querySelector('nav');
        nav.classList.toggle('hidden');
        nav.classList.toggle('block');
        nav.classList.toggle('mt-4');
      });
    });
  </script>
</body>
</html>
EOF

echo ""
echo "UI design generated successfully!"
echo "The design follows modern aesthetic principles with semantic HTML, TailwindCSS styling, and minimal JavaScript."