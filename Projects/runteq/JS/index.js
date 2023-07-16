// 関数式
const func = function (callback) {
  // 引数callback : () =>{}
  callback();
};

func(() => {
  console.log("コールバック関数本体です");
});

// 1.関数式
// 引数を持たない関数
// 1.関数を引数として実装する
// 1.引数として受け取った関数を実行する

const PromiseFunc = () => {
  return new PromiseFunc((resolve, object) => {
    const url = "url";
    fetch(url)
      .then((res) => {
        res.json();
      })
      .catch((e) => {
        console.log(e.message);
      });
  });
};
