# react-hotload-cjsx

Minimal project with least number of dependencies to get basic CoffeeScript/CJSX/React running.

**Remember:** put each React component in its own file, or it will not hot-reload properly ([reference](https://github.com/gaearon/react-hot-loader/issues/163))

Update: use idiomatic CoffeeScript `class`/`extends` instead of `React.createClass`; [reference](https://facebook.github.io/react/blog/2015/01/27/react-v0.13.0-beta-1.html#other-languages).

## Usage

Install deps and run with hot-reloading:

```
npm install
npm run dev
```

See `server/dev-server.coffee` for how this works.


To run in "production" mode (`express` instead of `webpack-dev-server`) simply use `npm start`. This will read `webpack.config.js` to generate `bundle.js` in `public` and run `server/server.coffee`.


## References

- [react-hot-loader](http://gaearon.github.io/react-hot-loader/)
- [webpack docs](http://webpack.github.io/docs/)
- [react docs](https://facebook.github.io/react/docs/getting-started.html)
