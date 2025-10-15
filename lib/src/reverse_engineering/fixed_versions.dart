// Hotfix for https://github.com/Hexer10/youtube_explode_dart/issues/363
// YouTube seems to have dramatically changed their signature algorithms.
// Until a proper fix is found, we will use fixed versions here and hope that
// they last for a while.

const fixedPlayerVersion = '0004de42';
const fixedSignatureTimestamp = 20348;
