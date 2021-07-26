# elastalert with dingtalk

配置中增加
```
alert:                    
- "elastalert_modules.dingtalk_alert.DingTalkAlerter"
dingtalk_webhook: #webhook url
dingtalk_msgtype: text
```