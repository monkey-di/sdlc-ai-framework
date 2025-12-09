---
description: Генерация чистого HTML без фреймворков
---

Сгенерируй чистый HTML5 для выбранного элемента Figma.

Требования:
- Только HTML5, никакого JSX/React
- Семантические теги: `<section>`, `<article>`, `<nav>`, `<button type="button">`
- Атрибут `class` (не `className`)
- SVG иконки инлайном или `<img src="placeholder.svg">`
- Tailwind классы для стилей: hover:, focus:, group-hover:
- Никакого inline CSS или `<style>` тегов

Структура вывода:
```html
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Component</title>
</head>
<body>
  <!-- Ваш код здесь -->
</body>
</html>
```

Используй get_design_context и get_variable_defs для точности.
