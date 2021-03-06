package com.genersoft.iot.vmp.vmanager.service;

import com.alibaba.fastjson.JSONObject;

/**
 * 点播处理
 */
public interface IPlayService {

    void onPublishHandlerForPlayBack(JSONObject resonse, String deviceId, String channelId, String uuid);
    void onPublishHandlerForPlay(JSONObject resonse, String deviceId, String channelId, String uuid);
}
