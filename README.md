# my_nvimrc
## Troubleshooting
### LSP
#### Pyright
[Here](https://github.com/neovim/nvim-lspconfig#troubleshooting) is some info on what to do if pyright doesn't work.
In my case pyright didn't attach to my python file, but everything was set right. Turns out that I had a very outdated Node.js
package installed on my system. You can check out how to update your Node.js with npm (apt doesn't support new versions, mine was 10~ish
while new started with 20.~)
