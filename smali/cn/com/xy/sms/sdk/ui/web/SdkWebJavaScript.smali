.class public Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_TYPE_CONVERSATION:I = 0x1


# instance fields
.field private isCallBackData:Z

.field private mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

.field private mConversionJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->isCallBackData:Z

    .line 42
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mConversionJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$102(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mConversionJson:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public asyncRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;

    invoke-direct {v0, p0, p3}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;)V

    .line 105
    invoke-static {p1, p2, v0}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    .line 106
    return-void
.end method

.method public asyncRequestByParamKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;

    invoke-direct {v0, p0, p3}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    .line 131
    return-void
.end method

.method public checkHasAppName(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 233
    :try_start_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkOrientation()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->checkOrientation()I

    move-result v0

    return v0
.end method

.method public clearUserIccidInfo(I)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getIccidBySimIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->deleteIccidInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public closeDefService()J
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/ParseManager;->setDefServiceSwitch(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public closeWebView()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 163
    return-void
.end method

.method public doAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 141
    if-eqz p2, :cond_0

    .line 142
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 145
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 146
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "SdkWebJavaScript error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 151
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v4}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->doCustomAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method public downloadApp(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 135
    const-string v0, "download"

    invoke-virtual {p0, v0, p1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->doAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConfigByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0, p1}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getExtendValue(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "SdkWebJavaScript error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameAndLogoNameByNum(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 404
    new-instance v6, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;

    invoke-direct {v6, p0, p6}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 432
    invoke-static {p5}, Lcn/com/xy/sms/sdk/util/JsonUtil;->parseJSON2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 431
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getNameAndLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;

    .line 433
    return-void
.end method

.method public getUserIccidInfo(I)Lorg/json/JSONObject;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    :try_start_0
    const-string v0, "SdkWebJavaScript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryIccidInfo simIndex==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getIccidBySimIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_3

    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    iget-object v1, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userProvinces:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "userProvinces"

    iget-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :goto_0
    iget-object v1, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "userAreacode"

    iget-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :goto_1
    iget-object v1, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    const-string v1, "userOperator"

    iget-object v2, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :goto_2
    const-string v1, "SdkWebJavaScript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserIccidInfo res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-object v0

    .line 266
    :cond_0
    :try_start_2
    const-string v1, "userProvinces"

    iget-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userProvinces:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    :goto_3
    const-string v2, "SdkWebJavaScript error "

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    :cond_1
    :try_start_3
    const-string v1, "userAreacode"

    iget-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 276
    :cond_2
    const-string v1, "userOperator"

    iget-object v2, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 279
    :cond_3
    :try_start_4
    const-string v0, "SdkWebJavaScript"

    const-string v2, "queryIccidInfo iccidInfo is null"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_2

    .line 281
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3
.end method

.method public getValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDoubleSimPhone()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->isDoubleSimPhone()Z

    move-result v0

    return v0
.end method

.method public openDefService()J
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/ParseManager;->setDefServiceSwitch(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public postData(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 390
    if-eqz p1, :cond_1

    .line 391
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->isCallBackData:Z

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    iput-boolean v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->isCallBackData:Z

    .line 397
    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mConversionJson:Lorg/json/JSONObject;

    invoke-interface {v0, v2, v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->setData(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public queryDefServiceSwitch()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/util/ParseManager;->queryDefService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryJson(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getType()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "conversation_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    if-eqz p3, :cond_2

    .line 379
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public runOnAndroidJavaScript(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public saveUserIccidInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 307
    if-gez p1, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getIccidBySimIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "SdkWebJavaScript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveUserIccidInfo simIndex==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,iccid==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,userProvinces==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,userAreacode==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,userOperator==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 314
    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->insertOrUpdateIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 316
    if-eqz v1, :cond_1

    .line 317
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.com.xy.sms.iccidinfo.action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v3, "iccid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v3}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    const-string v2, "SdkWebJavaScript"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast iccid==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 322
    goto/16 :goto_0
.end method

.method public saveValueByKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 182
    .line 185
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const-wide/16 v0, 0x0

    .line 190
    :goto_0
    return-wide v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public setConfigByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->mActivityParam:Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->setParamData(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
