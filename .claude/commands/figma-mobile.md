---
description: Генерация мобильной версии из Figma
---

Проанализируй выбранный мобильный макет из Figma и сгенерируй код.

Правила трансляции:
- Auto Layout HORIZONTAL → flex-row
- Auto Layout VERTICAL → flex-col
- Все px значения дели на 4 для Tailwind (24px → p-6)
- Используй только базовые классы без md:/lg: префиксов
- Корневые контейнеры: w-full max-w-screen-xl mx-auto
- Для сложных элементов оставляй TODO комментарии

Сначала используй get_design_context для получения структуры, затем get_variable_defs для маппинга цветов.

Выведи чистый код компонента на React + Tailwind без объяснений.
