# Test for Tensorflow privacy

tensorflow-privacyをDocker上で遊んで見る．

---

## 使い方

1. docker-compose をインストールしてなければインストールする.

    ```sh
    pip install docker-compose
    ```

2. サービス名testをビルドする．

    同時にtensorflow privateおよびそれに必要なインストールは行われる．
    もとイメージのtensorflowバージョンが1.12なので，1.13にする．

    ```sh
    docker-compose up -d test
    ```

3. testコンテナ実行．

    bashが立ち上がる．

    privacy/tutorial内にあるテストコードの動作は確認済み．

    ```sh
    docker-compose exec test bash
    ## docker container内で次を実行すると，テストコードが走る．
    python privacy/tutorials/mnist_dpsgd_tutorial.py 
    ```