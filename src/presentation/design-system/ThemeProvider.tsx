import type { ThemeConfig } from 'antd';
import { ConfigProvider } from 'antd';
import { theme } from './theme';

type Props = {
	children: React.ReactNode;
};

export default function ThemeProvider({ children }: Props) {
	const config: ThemeConfig = theme;
	return <ConfigProvider theme={config}>{children}</ConfigProvider>;
}
