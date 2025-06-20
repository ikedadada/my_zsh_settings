FROM ubuntu:22.04

# 動作検証環境用コンテナ

ENV DEBIAN_FRONTEND=noninteractive

# ---------- 基本ツール ----------
RUN apt-get update && apt-get install -y \
    build-essential curl file git zsh fzf fd-find unzip fonts-powerline procps sudo locales \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP:ja \
    LC_ALL=ja_JP.UTF-8

# ---------- 非 root ユーザー dev ----------
RUN useradd -m -s /usr/bin/zsh dev \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER dev
WORKDIR /home/dev

# ---------- Homebrew (root禁止なので dev で実行) ----------
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew コマンドを PATH に通す
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc \
    && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

ENV PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:${PATH}"

RUN brew install --cask font-hack-nerd-font
RUN brew install starship antidote mise vim

# ---------- dotfiles ----------
COPY --chown=dev:dev home/ /home/dev/

CMD ["zsh"]
