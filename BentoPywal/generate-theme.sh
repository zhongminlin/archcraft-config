#!/bin/bash
. ~/.cache/wal/colors.sh
light_value='0.05'
dark_value='0.30'
altbackground="`pastel color $background | pastel lighten $light_value | pastel format hex`"
altforeground="`pastel color $foreground | pastel darken $dark_value | pastel format hex`"
color8="`pastel color $color0 | pastel lighten $light_value | pastel format hex`"
color9="`pastel color $color1 | pastel lighten $light_value | pastel format hex`"
color10="`pastel color $color2 | pastel lighten $light_value | pastel format hex`"
color11="`pastel color $color3 | pastel lighten $light_value | pastel format hex`"
color12="`pastel color $color4 | pastel lighten $light_value | pastel format hex`"
color13="`pastel color $color5 | pastel lighten $light_value | pastel format hex`"
color14="`pastel color $color6 | pastel lighten $light_value | pastel format hex`"
color15="`pastel color $color7 | pastel lighten $light_value | pastel format hex`"

# Your path for Bento here
BENTO_DIR="/home/zlin/Bento"
BG_IMAGE=$(cat ~/.cache/wal/wal)
BG_EXT=${BG_IMAGE##*.}

if [[ $BENTO_DIR -eq "" ]]; then
    echo "Specify bento source folder first!"
    exit 1;
fi

# Move wallpaper to the bento assets
cp $BG_IMAGE "$BENTO_DIR/assets/background.$BG_EXT"

cat > "$BENTO_DIR/app.css" << EOF
/* 
// ╔╗ ╔═╗╔╗╔╔╦╗╔═╗
// ╠╩╗║╣ ║║║ ║ ║ ║
// ╚═╝╚═╝╝╚╝ ╩ ╚═╝ 
*/

/* 
//  ┬  ┬┌─┐┬─┐┬┌─┐┌┐ ┬  ┌─┐┌─┐
//  ┐┌┘├─┤├┬┘│├─┤├┴┐│  ├┤ └─┐
//  ┘ ┴ ┴┴└─┴┴ ┴└─┘┴─┘└─┘└─┘ 
 */

@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;700&display=swap'); /* Font Import */

:root {
  /* Font Size */
  --fg-primary: 12vh; /* Time and Greetings */
  --fg-secondary: 3vh; /* Greetings and Weather widger */
  --fg-date: 8vh; /* Date */
  --fg-list: 2vh; /* Links List */
  --icon: 3vh; /* Icon Size */

  /* Fonts Color */
  --fg: $background; /* Foreground color */
  --sfg: $background; /* Sceondary Foreground color */

  /* Light Colors  */
  --accent: $color11; /* Hover color */
  --background: $foreground; /* Background color */
  --cards: $altforeground; /* Cards color */

  /* Image background  */
  --imgbg: url(assets/background.$BG_EXT); /* Image URL */
  --imgcol: linear-gradient(
    rgba(255, 255, 255, 0),
    rgba(255, 255, 255, 0)
  ); /* Filter color */
}

.darktheme {
  /* Dark Colors  */
  --accent: $color11; /* Hover color */
  --background: $background; /* Background color */
  /*--cards: $color1;*/ /* Cards color */
  --cards: $altbackground; /* Cards color */

  /* Fonts Color */
  --fg: $foreground; /* Foreground color */
  --sfg: $foreground; /* Secondary Foreground color */

  /* Image background  */
  /*--imgcol: linear-gradient(
    rgba(0, 0, 0, 0.85),
    rgba(0, 0, 0, 0.85)
  );*/ /* Filter color */
}

/* 
//  ┌─┐┌┬┐┬ ┬┬  ┌─┐┌─┐
//  └─┐ │ └┬┘│  ├┤ └─┐
//  └─┘ ┴  ┴ ┴─┘└─┘└─┘ 
*/

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
  transition: 0.2s ease-in-out;
}

body {
  width: 100vw;
  height: 100vh;
  background-color: var(--background);
  display: flex;
  align-items: center;
  justify-content: center;
}

.notransition {
  -webkit-transition: none;
  -moz-transition: none;
  -o-transition: none;
  transition: none;
}

.withImageBackground {
  background-image: var(--imgcol), var(--imgbg);
  background-size: cover;
}

#themeButton {
  position: absolute;
  margin: 2em 2em 0 0;
  right: 0;
  top: 0;
  color: var(--fg);
  border: none;
  cursor: pointer;
  background-color: #00000000;
}

#themeIcon {
  width: 25px;
  height: 25px;
}

.container {
  width: 145vh;
  height: 85vh;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-template-rows: repeat(4, 1fr);
  grid-gap: 30px;
  padding: 20px;
}

.card {
  background-color: var(--cards);
  box-shadow: 0 5px 7px rgba(0, 0, 0, 0.35);
  border-radius: 5px;
}

.card:hover {
  transform: translateY(-0.2rem);
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.35);
}

.timeBlock {
  grid-row: 1 / span 2;
  grid-column: 1 / span 2;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.weatherBlock {
  grid-column: 3 / span 2;
  grid-row: 1 / span 2;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.date {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 30px;
}

.weather {
  display: flex;
  align-items: center;
  justify-content: center;
}

.clock {
  display: flex;
  align-items: center;
  justify-content: center;
}

#hour,
#separator,
#minutes {
  font-size: var(--fg-primary);
  font-weight: bolder;
  color: var(--fg);
}

#month,
#day {
  font-size: var(--fg-date);
  font-weight: bold;
  color: var(--fg);
}

#day {
  margin-left: 1.5rem;
}

#greetings {
  font-size: var(--fg-secondary);
  color: var(--fg);
}

.weatherIcon img {
  width: 70px;
  height: 70px;
}

.weatherValue p {
  font-size: var(--fg-secondary);
  font-weight: bolder;
  margin-left: 15px;
  color: var(--fg);
}

.weatherDescription p {
  font-size: var(--fg-secondary);
  margin-left: 15px;
  color: var(--fg);
}

.reduceGap {
  grid-gap: 2rem !important;
}

.removeGap {
  grid-gap: 0 !important;
}

.linksBlock {
  grid-row: 3 / span 2;
  grid-column: 1 / span 4;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-template-rows: repeat(2, 1fr);
  grid-gap: 1.5rem;
}

.linksBlockLeft {
  grid-row: 1 / span 2;
  grid-column: 1 / span 2;
}

.linksBlockRight {
  grid-row: 1 / span 2;
  grid-column: 3 / span 2;
}

.buttonsContainer {
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(2, 1fr);
  grid-gap: 30px;
  padding: 20px;
}

.button {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.buttonIcon {
  width: var(--icon);
  height: var(--icon);
  color: var(--fg);
}

.button__1 {
  grid-row: 1;
  grid-column: 1;
}
.button__2 {
  grid-row: 1;
  grid-column: 2;
}
.button__3 {
  grid-row: 2;
  grid-column: 1;
}
.button__4 {
  grid-row: 2;
  grid-column: 2;
}
.button__5 {
  grid-row: 1;
  grid-column: 3;
}
.button__6 {
  grid-row: 2;
  grid-column: 3;
}
.button:hover {
  background-color: var(--accent);
}
.button:hover svg {
  stroke: var(--sfg);
}

.listsContainer {
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-template-rows: repeat(2, 1fr);
  grid-gap: 3rem;
  padding: 0.4rem;
}

.list {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.list__1 {
  grid-column: 1;
  grid-row: 1 / span 2;
}
.list__2 {
  grid-column: 2;
  grid-row: 1 / span 2;
}
.listIcon {
  /* margin-top: 3vh; */
  margin-bottom: 2vh;
  color: var(--fg);
  width: var(--icon);
  height: var(--icon);
}
.listItem {
  text-decoration: none;
  font-size: var(--fg-list);
  color: var(--fg);
  margin-top: 1vh;
  padding: 8px 12px;
  border-radius: 5px;
  font-weight: bold;
  text-align: center;
  width: 80%;
}
.listItem:hover {
  background-color: var(--accent);
  color: var(--sfg);
}

/* M E D I A - Q U E R I E S */

@media only screen and (max-width: 68.75em) {
  .container {
    grid-gap: 20px;
    padding: 40px;
  }

  .timeBlock {
    grid-row: 1 / span 2;
    grid-column: 1 / span 4;
  }

  .weatherBlock {
    display: none;
  }

  #greetings {
    font-size: var(--fg-secondary);
  }

  .linksBlockRight {
    display: none;
  }

  .linksBlockLeft {
    grid-column: 1 / span 4;
  }

  .button {
    grid-gap: 3vw;
    padding-left: 100px;
    padding-right: 100px;
  }
}
EOF
