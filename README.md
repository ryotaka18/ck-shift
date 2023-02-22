# README
【アプリケーション名】
ck-shift

【アプリケーション概要】
・ユーザー管理機能(新規登録・ログイン・ログアウト・スタッフリスト管理機能)
・シフト作成機能(シフト作成・クリア・csv出力・年月・割当人数機能)
・シフト規則(早番遅番開始終了時間)管理機能
・希望休送信機能
・お問い合わせ(お問い合わせ機能)


【URL】


ID:
Pass:

【テスト用アカウント】
・管理者アカウント
Email :
Pass  : 

・ユーザーアカウント
Email : 
Pass  : 


【利用方法】
・管理者
新規登録→ログイン
ログイン→シフト作成→csvファイル出力
ログイン→スタッフ管理

・ユーザー
新規登録→ログイン→希望休提出

【目指した課題解決】
シフト作成業務を一貫して管理でき、作成したシフトをcsvファイルで出力しGoogleカレンダーへの反映を容易にするシステム

【洗い出した要件】
●ユーザー管理機能
・ユーザーを新しく登録できる
・ユーザー登録が完了している場合、ログインできる
・ユーザー登録後にユーザー情報を編集する事ができる
・ログアウトできる
●シフト作成機能
・一眼で全員のシフトを確認しながら作成と調整ができる
・管理者はシフト表を編集できる、csv出力できる
・ユーザーはシフト表閲覧できるが編集はできない
●シフト規則管理機能
・管理者のみ早番遅番の開始終了時間の設定ができる
●希望休送信機能
・ユーザー全員の希望休提出できる
●お問い合わせ
・お問い合わせができる

【実装した機能についてのGIFと説明】
●ユーザー管理機能
・新規登録

・ログイン


●シフト作成機能


●シフト規則管理機能


●希望休送信機能


●お問い合わせ機能


【実装予定の機能】
・作成したシフトをcsvファイルで出力する機能
・
・

【データベース設計】
 
 ### users テーブル
 #ユーザー情報を保存するテーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| userid        | string  | null: false |←未
| password      | string  | null: false |
| firstname     | string  | null: false |
| lastname      | string  | null: false |
| clinic        | string  | null: false |
| position      | string  | null: false |
| email         | string  | null: false |


### Association

- has_many :rules
- has_many :

## rules テーブル

| Column           | Type     |Options            |
| -----------------| -------- | ------------------|
| haya_starttime   | string   | null: false       |
| haya_endtime     | string   | null: false       |
| oso_starttime    | string     | null: false     |
| oso_endtime      | integer  | null: false       |
| user_id          | integer  | null: false , foreign_key: true   |

### Association

- belongs_to:users
- has_many:



