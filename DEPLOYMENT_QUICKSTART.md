# Быстрый старт: Деплой на GitHub Pages

Этот гайд поможет вам за 5 минут задеплоить сайт на GitHub Pages.

## 📋 Краткая инструкция

### 1. Создайте репозиторий на GitHub

```powershell
# Инициализация
git init
git add .
git commit -m "Initial commit"

# Подключение к GitHub
git remote add origin https://github.com/USERNAME/REPO.git
git branch -M main
git push -u origin main
```

### 2. Настройте GitHub Pages

1. Откройте репозиторий на GitHub
2. `Settings` → `Pages`
3. Source: **GitHub Actions**
4. Готово! ✅

### 3. (Опционально) Кастомный домен

Отредактируйте `docs/public/CNAME`:
```
your-domain.com
```

Настройте DNS:
```
A    @    185.199.108.153
A    @    185.199.109.153  
A    @    185.199.110.153
A    @    185.199.111.153
CNAME www  username.github.io
```

## 🔗 Подробная инструкция

Смотрите [полное руководство по деплою](./deployment.md).
