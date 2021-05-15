# Csapat1234

## Stresszteszt
A projekt stressztesztelését a [K6.io](https://k6.io/) eszközzel végeztük. A K6 segítségével Javascript alapon lehet megfogalmazni teszteket létrezhozni.
```javascript
import http from "k6/http";
import { sleep } from "k6";

const API_BASE_URL = "http://localhost/basil";

export default function () {
    http.get(API_BASE_URL + '/');

    sleep(1)
}
```
Ezzel a paranccsal megismételhető a teszt:
```shell
k6 run ./scripts/stress.js
```
Az általunk végzett mérések eredménye:
![](./images/stress.png)

## Biztonság
A projekt az [Apache Shiro](https://shiro.apache.org/) biztonsági keretrendszert használja a felhasználók kezelésére, aminek fejelsztéséért és karbantartásáért az [Apache Software Foundation](https://apache.org) felel. Széles körben elfogadott ipari standardeket használ, így feltételezhetően megfelel minden biztonsági kritériumnak.

A projektbe integrálása a hivatalos dokumentáció szerint történt, így vélhetőleg nem tartalmaz az [Apache Shiro](https://shiro.apache.org/) projekttől független sérülékenységi hibákat.

## Használhatóság
A projekt a viszonylag kevés dokumentáció miatt eleinte nehezen használható. A hibák kijavítása után viszont stabilan használható.