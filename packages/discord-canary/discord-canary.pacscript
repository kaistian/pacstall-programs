name="discord-canary"
version="0.0.126"
maintainer="aranym <aranym1@pm.me>"
url="https://dl-canary.discordapp.net/apps/linux/0.0.126/discord-canary-0.0.126.tar.gz"
depends="libc6 libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libstdc++6 libxss1 libxtst6 libappindicator1 libc++1"
description="Chat for Communities and Friends - Unstable"
hash="12b6930d129deadd1cf54ebcb5245d1a4781d617ea352e0a51ec045f090bf22a"

prepare() {
        sudo mkdir -p /usr/src/pacstall/discord-canary/usr/share/discord-canary/
        sudo mkdir -p /usr/src/pacstall/discord-canary/usr/share/applications/
        sudo mkdir -p /usr/src/pacstall/discord-canary/usr/share/icons/
}

build() {
        true
}

install() {
        sudo mv discord-canary.desktop /usr/src/pacstall/discord-canary/usr/share/applications/
        sudo cp discord.png /usr/src/pacstall/discord-canary/usr/share/icons/discord-canary.png
        sudo mv ./* /usr/src/pacstall/discord-canary/usr/share/discord-canary/
}
