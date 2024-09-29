import { createRoot } from 'react-dom/client';
import { Typography } from 'antd';
import ThemeProvider from '@presentation/design-system/ThemeProvider';
import './index.css';

const root = createRoot(document.getElementById('root'));
root.render(
	<ThemeProvider>
		<Typography.Title>Titulo</Typography.Title>
		<Typography.Text>Este es un texto de prueba</Typography.Text>
	</ThemeProvider>
);
