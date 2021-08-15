# Template_PHP_MySQL_Nginx

PHP, MySQL, Nginxのテンプレート

## 準備

1. ```mysql/sample.env```をコピーし、```mysql/.env```ファイルを作成する。
2. ```mysql/.env```ファイルを編集する。

## 起動

``` sh
docker-compose up -d
```

## URL

[http://localhost:8080/index.php](http://localhost:8080/index.php)

## 備考

### PHPのログについて

デフォルトの設定だとコンソールに出力される。ログの出力先はnginx/nginx.confに記載されている。下記設定。

``` conf
    access_log /var/log/nginx/access.log;
    error_log  /var/log/nginx/error.log;
```

それぞれ /dev/stdoutと/dev/stderrにリンクが張られているため、両方ともコンソールに出力される。ファイルに出力させたい場合はログのパスを返るか、行を増やす。（複数指定できる。）

## 参考

- [Qiita:DockerによるPHP開発環境構築（PHP + MySQL + Nginx）](https://qiita.com/nemui_/items/f911be7ffa4f29293fd5)