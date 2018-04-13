/**
 * This little helperscript will ensure correct filenames, since prebuild
 * Will output only the ABI versions, whereas for electron we need the
 * version code in form of major.minor since node-pre-gyp will use those as the abi
 * version for electron.
 * @author Wolfgang Felbermeier (@f3lang)
 */

const fs = require('fs');
const path = require('path');
const nodeAbi = require('node-abi');
const semver = require('semver');

let buildList = fs.readdirSync(path.join(__dirname, 'prebuilds'));
let config = require('./package.json');

buildList.forEach(build => {
	let matched = build.match(/.*-electron-v(\d+)-(win32-ia32|win32-x64|linux-ia32|linux-x64|darwin-x64).*/);
	if (matched) {
		let targetVersion = nodeAbi.getTarget(matched[1], "electron");
		let targetElectronVersion = semver.major(targetVersion) + "." + semver.minor(targetVersion);
		if (semver.major(targetVersion) < 1) {
			targetElectronVersion = "1.0";
		}
		let target = 'librsvg-prebuilt-v' + config.version + '-electron-v' + targetElectronVersion + '-' + matched[2] + '.tar.gz';
		fs.rename(path.join(__dirname, 'prebuilds', build), path.join(__dirname, 'prebuilds', target), (err) => console.log(err));
		if (targetElectronVersion === "1.1") {
			fs.createReadStream(path.join(__dirname, 'prebuilds', target)).pipe(fs.createWriteStream(
				path.join(__dirname, 'prebuilds', 'librsvg-prebuilt-v' + config.version + '-electron-v1.2-' + matched[2] + '.tar.gz')
			))
		}
	}
});
