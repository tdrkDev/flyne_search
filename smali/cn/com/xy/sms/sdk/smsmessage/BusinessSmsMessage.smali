.class public Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:J = 0x1L

.field public static emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public bubbleJsonObj:Lorg/json/JSONObject;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public extendParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public imagePathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isBgVis:Z

.field public isPopByWeishi:Z

.field public messageBody:Ljava/lang/String;

.field public msgTime:J

.field public originatingAddress:Ljava/lang/String;

.field public reBindData:Z

.field public simIndex:I

.field public simName:Ljava/lang/String;

.field public smsId:J

.field public titleNo:Ljava/lang/String;

.field public valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public viewType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simName:Ljava/lang/String;

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->reBindData:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isPopByWeishi:Z

    iput-byte v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->msgTime:J

    return-void
.end method

.method public static createMsgObj()Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionJsonArray()Lorg/json/JSONArray;
    .locals 2

    const-string v0, "ADACTION"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->parseStrToJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "ADACTION"

    invoke-virtual {p0, v1, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCenterAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getExtendParamValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImgNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00a0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsId()J
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    return-wide v0
.end method

.method public getTableData(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getTableDataSize(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    iget-byte v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    :cond_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public getTitleNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->titleNo:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataNull(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    return-void
.end method

.method public setOriginatingAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    return-void
.end method

.method public setSmsId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    return-void
.end method

.method public setTitleNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->titleNo:Ljava/lang/String;

    return-void
.end method
