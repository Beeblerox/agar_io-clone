# О семинаре

В рамках практического семинара мы рассмотрим создание клона игры [agar.io](https://agar.io/) с целью демонстрации возможностей Haxe для построения кросс-платформенных игр. В нашем примере код игры будет компилироваться под разные платформы (html5, MacOS, Windows, Android и iOS), а также повторно использоваться на сервере и на клиенте (в многопользовательской версии игры).

Демо: https://kevinresol.github.io/hkoscon2017-haxe-game/ (однопользовательская версия)

## Подготовка

Участники должны иметь опыт работы хотя бы с одним языком программирования (идеальным будет знание JavaScript, Java, или C#). Участники должны быть знакомы с работой в командной строке. Для участия необходим ноутбук с Windows, MacOS или Linux.

Перед началом семинара крайне желательно выполнить следующие инструкции:

### 1. Установите Haxe

Скачать установочный пакет можно [с сайта Haxe](https://haxe.org/download/).

### 2. Установите Node.js

Скачать установочный пакет можно [с сайта Node.js](https://nodejs.org/) (рекомендуется использовать LTS-версию).

### 3. Установите Git

Скачать его можно [с сайта Git](https://git-scm.com/). Удостоверьтесь, что git доступен из командной строки, например, командой `git --version`, которая должна вывести что-то наподобие `git version 2.7.4`.

### 4. Установите необходимые библиотеки Haxe

Примечание: если вы впервые запускаете `haxelib`, то сперва необходимо выполнить команду `haxelib setup`.
 

 * [OpenFL](http://www.openfl.org/). В соответствии [с инструкциями с официального сайта OpenFL](http://www.openfl.org/learn/docs/getting-started/):

   ```bash
   haxelib install openfl
   haxelib run openfl setup
   ```

 * [haxe-ws](https://github.com/soywiz/haxe-ws)

   ```bash
   haxelib install haxe-ws
   ```

 * [hxnodejs](https://github.com/HaxeFoundation/hxnodejs)

   ```bash
   haxelib install hxnodejs
   ```

 * [hxcpp](https://github.com/HaxeFoundation/hxcpp)

   ```
   haxelib install hxcpp
   ```

### 5. Установите Visual Studio Code или FlashDevelop / HaxeDevelop

Хотя теоретически вы можете использовать любую IDE или текстовый редактор, рекомендуется использовать [Visual Studio Code](https://code.visualstudio.com/) вместе с установленным [пакетом расширений для Haxe](https://marketplace.visualstudio.com/items?itemName=vshaxe.haxe-extension-pack), которые обеспечивают наилучшую поддержку Haxe в настоящий момент.

### 6. Установите инструменты для разработки на C++

(необязательно, они могут использоваться для сборки проекта под нативные платформы: Windows, Linux, MacOS, iOS, Android). В зависимости от вашей ОС, вы можете использовать [Microsoft Visual Studio](https://www.visualstudio.com/) (Windows), [XCode](https://developer.apple.com/xcode/) (MacOS), или gcc (Linux).

### Полезные ссылки

 * Руководство по Haxe: https://haxe.org/manual/introduction.html
 * Документация по API Haxe: http://api.haxe.org/
 * Try Haxe (онлайн-песочница): https://try.haxe.org/
 * Учебные материалы по OpenF: http://www.openfl.org/learn/tutorials/
 * Документация по API OpenFL: http://api.openfl.org/
 * Библиотека `haxe-ws` library: https://lib.haxe.org/p/haxe-ws
 * npm-пакет `ws`: https://www.npmjs.com/package/ws#usage-examples
 * Haxe и JavaScript: https://matthijskamstra.github.io/haxejs/
 * Список ресурсов по игровой разработке на Haxe: https://github.com/Dvergar/awesome-haxe-gamedev

## License

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="https://licensebuttons.net/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  Все материалы в данном репозитории являются переработанным переводом материалов семинара, проведенного в рамках Haxe Summit 2017, авторами которого являются <a href="https://github.com/andyli">Andy Li</a> и <a href="https://github.com/kevinresol/">Kevin Leung</a>. <a href="https://github.com/andyli/HaxeSummit2017Tutorial">Исходный репозиторий</a>.
</p>
