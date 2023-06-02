const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Proxima Nova','Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors:{
        'primary-blue': '#3778c2',
        'secondary-green': '#5fb523',
        'primary-black': '#434b54',
        'primary-gray-1': '#545c67',
        'primary-gray-2': '#86898e',
        'primary-gray-3': '#989da3',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
