#!/bin/sh
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"
echo -n "\033]0;FuckBot\007"
while true
do {
  java -server -Xmx2G -XX:+UseConcMarkSweepGC -XX:MaxGCPauseMillis=50 -Djline.terminal=jline.UnsupportedTerminal -Dfile.encoding=UTF-8 -jar FuckBot.jar
} done