const { config, environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', 
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)

// const { config, environment, Environment } = require('@rails/webpacker');
const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);

module.exports = environment;
