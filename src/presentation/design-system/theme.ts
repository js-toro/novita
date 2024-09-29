import type { ThemeConfig } from 'antd';

export const theme: ThemeConfig = {
	token: {
		colorPrimary: '#ea6eb2',
		colorInfo: '#ea6eb2',
		borderRadius: 16,
		colorSuccess: '#70dea5',
		colorWarning: '#fa8c16',
		colorError: '#ef585f',
		colorTextBase: '#212121',
		colorBgBase: '#fefefe',
		borderRadiusSM: 13,
		borderRadiusXS: 4,
		lineWidth: 2,
		fontFamily: "'Fredoka', sans-serif",
		fontSize: 16
	},
	components: {
		Button: {
			lineWidth: 2,
			algorithm: true
		}
	}
};
