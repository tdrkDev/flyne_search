.class public Lcn/com/xy/sms/sdk/util/PopupUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<![\\-0-9])0\\d{2,3}-?\\d{7,8}(?!\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/PopupUtil;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActionCode(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x3

    const/4 v2, -0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "url"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "reply_sms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "reply_sms_fwd"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "call_phone"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "call"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v3, "reply_sms_open"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v1, "access_url"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "down_url"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "send_email"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "weibo_url"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "map_site"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "open_map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "open_map_list"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "open_map_browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    const-string v0, "chong_zhi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "recharge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "zfb_recharge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "WEB_CHONG_ZHI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "WEB_RECHARGE_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_a
    const-string v0, "repayment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "zfb_repayment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "WEB_REPAYMENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "WEB_REPAYMENT_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_c
    const-string v0, "copy_code"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_d
    const-string v0, "open_app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_e
    const-string v0, "time_remind"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "sdk_time_remind"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_10
    const-string v0, "pay_water_gas"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_11
    const-string v0, "WEB_TRAFFIC_ORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "WEB_TRAFFIC_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "WEB_PURCHASE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_13
    const-string v0, "WEB_QUERY_EXPRESS_FLOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_14
    const-string v0, "WEB_QUERY_FLIGHT_TREND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_15
    const-string v0, "WEB_INSTALMENT_PLAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_16
    const-string v0, "WEB_TRAIN_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_17
    const-string v0, "WEB_NEAR_SITE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "near_site"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_19
    const-string v0, "WEB_LIVE_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_1b
    move v0, v2

    goto/16 :goto_0
.end method

.method public static getMsg(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setOriginatingAddress(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setMessageBody(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isBgVis:Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "Result"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "msgId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "simIndex"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "simName"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "msgTime"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "uri"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    const-string v5, "msgId"

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simIndex"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simName"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msgTime"

    invoke-interface {p3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phoneNumber"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsContent"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri"

    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p4, v0, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const-string v0, "Result"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static getResultMap(ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Result"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recogResult"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getValue()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->handlerAssemble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method public static isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "10088"

    aput-object v2, v4, v1

    const-string v2, "10198"

    aput-object v2, v4, v0

    const-string v2, "101901"

    aput-object v2, v4, v7

    const-string v2, "123662"

    aput-object v2, v4, v8

    const/4 v2, 0x4

    const-string v5, "12306"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "12110110"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "121100020"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "11888"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "11868"

    aput-object v5, v4, v2

    const-string v2, "1186666"

    aput-object v2, v4, v6

    const/16 v2, 0xa

    const-string v5, "118388"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, "118200"

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, "118114"

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, "118100"

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, "118067"

    aput-object v5, v4, v2

    const/16 v2, 0xf

    const-string v5, "11803080"

    aput-object v5, v4, v2

    const/16 v2, 0x10

    const-string v5, "11185"

    aput-object v5, v4, v2

    const/16 v2, 0x11

    const-string v5, "11183"

    aput-object v5, v4, v2

    const/16 v2, 0x12

    const-string v5, "13800138000"

    aput-object v5, v4, v2

    const/16 v2, 0x13

    const-string v5, "095583"

    aput-object v5, v4, v2

    const/16 v2, 0x14

    const-string v5, "1252004411"

    aput-object v5, v4, v2

    const/16 v2, 0x15

    const-string v5, "12520"

    aput-object v5, v4, v2

    const/16 v2, 0x16

    const-string v5, "12520029"

    aput-object v5, v4, v2

    const/16 v2, 0x17

    const-string v5, "12520035"

    aput-object v5, v4, v2

    const/16 v2, 0x18

    const-string v5, "125200353"

    aput-object v5, v4, v2

    const/16 v2, 0x19

    const-string v5, "125200352"

    aput-object v5, v4, v2

    const/16 v2, 0x1a

    const-string v5, "125200304"

    aput-object v5, v4, v2

    const/16 v2, 0x1b

    const-string v5, "125200351"

    aput-object v5, v4, v2

    const/16 v2, 0x1c

    const-string v5, "12520010"

    aput-object v5, v4, v2

    const/16 v2, 0x1d

    const-string v5, "12520021"

    aput-object v5, v4, v2

    const/16 v2, 0x1e

    const-string v5, "125200303"

    aput-object v5, v4, v2

    const/16 v2, 0x1f

    const-string v5, "1252003300000"

    aput-object v5, v4, v2

    const/16 v2, 0x20

    const-string v5, "12520032"

    aput-object v5, v4, v2

    const/16 v2, 0x21

    const-string v5, "125200302"

    aput-object v5, v4, v2

    const/16 v2, 0x22

    const-string v5, "12520028"

    aput-object v5, v4, v2

    const/16 v2, 0x23

    const-string v5, "12520038"

    aput-object v5, v4, v2

    const/16 v2, 0x24

    const-string v5, "12520024"

    aput-object v5, v4, v2

    const/16 v2, 0x25

    const-string v5, "12520036"

    aput-object v5, v4, v2

    const/16 v2, 0x26

    const-string v5, "125200301"

    aput-object v5, v4, v2

    const/16 v2, 0x27

    const-string v5, "12520027"

    aput-object v5, v4, v2

    const/16 v2, 0x28

    const-string v5, "125200354"

    aput-object v5, v4, v2

    const/16 v2, 0x29

    const-string v5, "1252003300000"

    aput-object v5, v4, v2

    const/16 v2, 0x2a

    const-string v5, "053287003810"

    aput-object v5, v4, v2

    move v2, v1

    :goto_1
    const/16 v5, 0x2b

    if-lt v2, v5, :cond_3

    new-array v4, v6, [Ljava/lang/String;

    const-string v2, "96"

    aput-object v2, v4, v1

    const-string v2, "95"

    aput-object v2, v4, v0

    const-string v2, "106"

    aput-object v2, v4, v7

    const-string v2, "10178"

    aput-object v2, v4, v8

    const/4 v2, 0x4

    const-string v5, "10086"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "1006"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "1001"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "1000"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "116114"

    aput-object v5, v4, v2

    move v2, v1

    :goto_2
    if-lt v2, v6, :cond_4

    const-string v2, "12520030"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_0

    :cond_2
    const-string v0, "12520036"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_5

    const-string v0, "12520036"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->sj(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    aget-object v5, v4, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const-string v0, "FIXED_PHONE"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "false"

    const-string v0, "FIXED_PHONE"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public static isFixedPhone(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getDexClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cn.com.xy.sms.sdk.Iservice.OnlineParseImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isFixedPhone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getConfig(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isPopupAble"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isUseDefaultPopup(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "view_forceToDefault_popup"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p2}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p8, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "viewPartParam"

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerBubbleValueMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v5, :cond_d

    const-string v2, "isSafeVerifyCode"

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isSafeVerifyCode"

    const-string v3, "isSafeVerifyCode"

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "title_num"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/b/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_2

    if-eqz v3, :cond_b

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    invoke-static {v5, v2}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "viewPartParam"

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->removeUselessKey(Lorg/json/JSONObject;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "msg_num_md5"

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, "phonenum"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v8, v6, v3

    const/4 v3, 0x4

    const-string v7, "scene_id"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    aput-object v2, v6, v3

    const/4 v2, 0x6

    const-string v3, "msg_id"

    aput-object v3, v6, v2

    const/4 v2, 0x7

    aput-object p1, v6, v2

    const/16 v2, 0x8

    const-string v3, "bubble_result"

    aput-object v3, v6, v2

    const/16 v2, 0x9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/16 v2, 0xa

    const-string v3, "save_time"

    aput-object v3, v6, v2

    const/16 v2, 0xb

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/16 v2, 0xc

    const-string v3, "bubble_lasttime"

    aput-object v3, v6, v2

    const/16 v2, 0xd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/16 v2, 0xe

    const-string v3, "urls"

    aput-object v3, v6, v2

    const/16 v2, 0xf

    const-string v3, "url"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    move-result-wide v2

    :goto_3
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_7

    const-string v4, "CACHE_SDK_MSG_ID"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string v2, "View_fdes"

    const-string v3, "View_fdes"

    invoke-static {v9, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p9, :cond_4

    invoke-static {v8, p1, v9}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    const-string v2, "BUBBLE_JSON_RESULT"

    invoke-interface {v5, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "parseStatu"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    move-object v2, v5

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    const-string v2, "CACHE_SDK_MSG_RESULT"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, " parseMsgToBubbleCardResult  isPopupAble is faild"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v4, -0x3

    :goto_6
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->queryDataCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v6, 0xe

    const-wide/32 v8, 0x1499700

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    const-wide/32 v8, 0x1d4c0

    sub-long/2addr v6, v8

    sub-long/2addr v2, v6

    :goto_7
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "msg_num_md5"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v6, 0x2

    const-string v9, "phonenum"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x4

    const-string v9, "scene_id"

    aput-object v9, v8, v6

    const/4 v6, 0x5

    const-string v9, ""

    aput-object v9, v8, v6

    const/4 v6, 0x6

    const-string v9, "msg_id"

    aput-object v9, v8, v6

    const/4 v6, 0x7

    aput-object p1, v8, v6

    const/16 v6, 0x8

    const-string v9, "bubble_result"

    aput-object v9, v8, v6

    const/16 v6, 0x9

    const-string v9, ""

    aput-object v9, v8, v6

    const/16 v6, 0xa

    const-string v9, "save_time"

    aput-object v9, v8, v6

    const/16 v6, 0xb

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v6, 0xc

    const-string v9, "bubble_lasttime"

    aput-object v9, v8, v6

    const/16 v6, 0xd

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    :cond_9
    if-eqz p9, :cond_a

    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const-string v2, "parseStatu"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    move-object v2, v5

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, " parseMsgToBubbleCardResult  BubleSmsTitle is null"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v4, -0x2

    goto/16 :goto_6

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v6, 0xe

    const-wide/32 v8, 0x1499700

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    const-wide/32 v8, 0x668a0

    sub-long/2addr v6, v8

    sub-long/2addr v2, v6

    goto/16 :goto_7

    :cond_d
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v6

    const-string v7, "XIAOYUAN"

    const-string v8, " parseMsgToBubbleCardResult is null"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    throw v2

    :cond_e
    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_5

    :cond_f
    move-wide v2, v6

    goto/16 :goto_3
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_10

    :try_start_0
    const-string v0, "title_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    sput-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    move-result-object v1

    sget-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->Test:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_e

    new-instance v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    sget-boolean v3, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "view_default_popup"

    const-string v4, "true"

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    :cond_2
    iget-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v2, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setOriginatingAddress(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setMessageBody(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isBgVis:Z

    iput-object v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setTitleNo(Ljava/lang/String;)V

    const-string v1, "simIndex"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simIndex:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    :try_start_4
    const-string v1, "msgTime"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->msgTime:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_3
    :try_start_6
    const-string v1, "simName"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerValueMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    invoke-static {v2, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isUseDefaultPopup(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v2, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->popupDefault(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v1

    if-ne v1, v6, :cond_9

    sget-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-nez v1, :cond_5

    const-string v1, "view_forceToDefault_popup"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    :goto_4
    return-object v0

    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    iget-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    :goto_5
    invoke-static {v8, v7}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :cond_7
    :try_start_8
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    throw v0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto :goto_4

    :cond_9
    :try_start_a
    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto :goto_4

    :cond_a
    :try_start_b
    new-instance v1, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "titleNo"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v1, v3, v4}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    invoke-static {p0, v2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto :goto_4

    :cond_b
    :try_start_c
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v1

    if-ne v1, v6, :cond_d

    sget-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-nez v1, :cond_c

    const-string v1, "view_forceToDefault_popup"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_4

    :cond_d
    :try_start_d
    new-instance v1, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "titleNo"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v1, v3, v4}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    invoke-static {p0, v2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_4

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_e
    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_4

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_f
    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcn/com/xy/sms/sdk/util/y;->a()V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method public static parseMsgToSimpleBubbleResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;ZLjava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p8, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/a/b;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_4

    const-wide/16 v6, -0x1

    invoke-static {p2, p4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "msg_num_md5"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-string v7, "phonenum"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const-string v7, "msg_id"

    aput-object v7, v6, v2

    const/4 v2, 0x5

    aput-object p1, v6, v2

    const/4 v2, 0x6

    const-string v7, "session_reuslt"

    aput-object v7, v6, v2

    const/4 v7, 0x7

    if-nez v3, :cond_3

    const-string v2, ""

    :goto_1
    aput-object v2, v6, v7

    const/16 v2, 0x8

    const-string v7, "save_time"

    aput-object v7, v6, v2

    const/16 v2, 0x9

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0xa

    const-string v7, "session_lasttime"

    aput-object v7, v6, v2

    const/16 v2, 0xb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    move-result-wide v6

    :cond_2
    if-eqz v3, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "CACHE_SDK_MSG_ID"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CACHE_SDK_MSG_SIMPLE_RESULT"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz p9, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/util/ParseBubbleManager;->equalPhoneNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_5

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, v4}, Lcn/com/xy/sms/util/ParseBubbleManager;->addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "CACHE_SDK_MSG_SIMPLE_RESULT"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object v2, v4

    goto :goto_2
.end method

.method public static popupDefault(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "view_forceToDefault_popup"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, "View_fdes"

    const-string v1, "H103102;B502513,10236113;F904"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "view_title_name"

    const-string v1, "title_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "View_viewid"

    const-string v1, "001"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p2}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const-string v0, "View_fdes"

    const-string v1, "H113;B502,10340013;F908906"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const-string v0, "View_fdes"

    const-string v1, "H101;B502,11125213;F901"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v0, "cn.com.xy.sms.sdk.util.PopupUtil"

    const-string v2, "startBusinessReceiveSmsActivity"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iput-object p2, p1, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "128"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.com.xy.sms.sdk.ui.popu.BusinessReceiveSmsActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "cn.com.xy.sms.sdk.util.PopupUtil"

    const-string v2, "startBusinessReceiveSmsActivity"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->addThirdPopupMsgData(Ljava/util/Map;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "cn.com.xy.sms.sdk.util.PopupUtil"

    const-string v2, "startBusinessReceiveSmsActivity"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "cn.com.xy.sms.sdk.util.PopupUtil"

    const-string v3, "startBusinessReceiveSmsActivity"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static startWebActivity(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->openStartWebActivity(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
