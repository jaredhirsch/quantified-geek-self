#!/usr/bin/env node

var sys = require('sys');
var exec = require('child_process').exec;

function windowTitleCheck() {
  exec('./macos-get-active-window-title.applescript >> active-window-title.log');
  setTimeout(windowTitleCheck, 15 * 1000);
}

windowTitleCheck();
