# blogdownをストレスフリーに使いたい
Rのcodeとかいちいち調べるのめんどくさいし、覚えていられるほど記憶力もよくないので、自分のホームページにまとめときたい。しかも、あんま考えなくてもタグとかカテゴリーとかで分類してくれてたら嬉しい。<br>
  そんなこと思ってたら、どうやらblogdownとやらがなんかそんな感じらしいと聞きました。でも、いざやってみると正直難しい。<br>
  Notepadにメモするくらい気楽な感じでブログ書きたいのに、このファイルなんだっけ？なんか関数使うんだっけ？といちいちつまずく。<br>
  ストレスだ...<br>
  というわけで、できるだけ頭を使わずにストレスフリーなブログライフを目指し、ここにまとめます。基本的にwindowsユーザー向けです。<br>

## 参照したサイト
    1. https://bookdown.org/yihui/blogdown/


## インストールとアップデート
  まずはRにblogdownパッケージをインストールします。CRANかGitHubからインストールできます。

``` {r eval=FALSE, include=TRUE,tidy=TRUE}
## Install from CRAN
install.packages('blogdown') 
## Or, install from GitHub
if (!requireNamespace("devtools")) install.packages('devtools')
devtools::install_github('rstudio/blogdown')

```

blogdownは静的サイトジェネレーターのHugo (https://gohugo.io)に基づいているので、Hugoをインストールする必要があります (blogdown::install_hugo())。
自分のRにインストールしているHugoのバージョンは blogdown::hugo_version() で確認できます。<br>
  最新バージョンはhttps://github.com/gohugoio/hugo/releases で見れるので、適宜 blogdown::update_hugo() でアップデートしてください（install_hugo(force=TRUE)でもできる）。<br>
  
## はじまり
  「光あれ」的な感じで blogdown::new_site() を使えば、何もないところにブログサイトを創造することができる。ただし、New Projectにしてね。

## Hugoベースサイトの3つの基本概念
### 1. config.toml
サイトのグローバル設定をつくるもの。中の設定は自分で自由に決められる。

### 2. CONTENTディレクトリ (content/)
投稿やぺージのR MarkdownやMarkdownをつくるところ。デフォルトでは、 content/ の下に about.md と post/ ディレクトリが置かれる。好みに合わせてファイルやディレクトリはいじいじできる。

### 3. パブリッシュディレクトリ (public/)
ウェブサイトを生成するためのディレクトリ。作成者はこのディレクトリをいちいち触る必要はなく、 serve_site() や build_site() で自動的に作ってくれる。便利。<br>
  サイトの材料はここに揃っている必王があり、htmlファイルやcssファイル、jsファイルなどが入っているはず。