// config/webpack/environment.js

const { environment } = require('@rails/webpacker')

// Example: Add a custom loader for CSS or other files (optional)
const webpack = require('webpack')

// Custom configuration to modify the Webpack environment
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
