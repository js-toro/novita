import type { Configuration } from 'webpack';

import { rules } from './webpack.rules';
import { plugins } from './webpack.plugins';
import path from 'path';

rules.push({
	test: /\.css$/,
	use: [{ loader: 'style-loader' }, { loader: 'css-loader' }]
});

export const rendererConfig: Configuration = {
	module: {
		rules
	},
	plugins,
	resolve: {
		extensions: ['.js', '.ts', '.jsx', '.tsx', '.css'],
		alias: {
			'@presentation': path.resolve(__dirname, './src/presentation'),
			'@infrastructure': path.resolve(__dirname, './src/infrastructure'),
			'@application': path.resolve(__dirname, './src/application'),
			'@domain': path.resolve(__dirname, './src/domain')
		}
	}
};
