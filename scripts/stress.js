import http from "k6/http";
import { sleep } from "k6";

const API_BASE_URL = "http://localhost/basil";

export default function () {
    http.get(API_BASE_URL + '/');

    sleep(1)
}