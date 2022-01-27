FROM gitpod/workspace-full

RUN sudo apt-get update

RUN sudo apt-get install -y git libatk1.0-0 libatk-bridge2.0-0 libgtk-3-0 libgbm1 libnss3 libasound2 libxshmfence-dev

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && sudo apt-get update \
    && sudo apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst --no-install-recommends
