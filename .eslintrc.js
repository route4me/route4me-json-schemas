exports = module.exports = {
	"extends": [
	],
	"plugins": [
		"json"
	],
	"parserOptions": {
		"sourceType": "script"   // required to set "strict mode" explicitly
	},
	"rules": {
		"strict": ["error", "global"],
		"dot-notation": "off",

		// code style
		"indent": ["error", "tab"],
		"quotes": ["error", "double"],
		"no-tabs": "off",
		"semi": ["error", "never"],
		"no-multi-spaces": "error",
	}
}
