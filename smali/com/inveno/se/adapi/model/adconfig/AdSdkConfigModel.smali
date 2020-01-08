.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adSdkRuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private advertList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;",
            ">;"
        }
    .end annotation
.end field

.field private json:Ljava/lang/String;

.field private reportUrl:Ljava/lang/String;

.field private sdkAdList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->adSdkRuleMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->adSdkRuleMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;-><init>()V

    invoke-virtual {v1, p0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->setJson(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rule_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "rule_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v4, v3

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->getScenario()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->getAd_configid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->getAd_configid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->setAdSdkRuleMap(Ljava/util/HashMap;)V

    :cond_3
    const-string v0, "advertList"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "advertList"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v3

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;

    invoke-direct {v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;-><init>()V

    const-string v8, "advertHeight"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setAdvertHeight(I)V

    const-string v8, "advertId"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setAdvertId(Ljava/lang/String;)V

    const-string v8, "advertPos"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setAdvertPos(I)V

    const-string v8, "advertType"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setAdvertType(I)V

    const-string v8, "isOpen"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setIsOpen(I)V

    const-string v8, "requestNum"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->setRequestNum(I)V

    invoke-virtual {v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->getAdvertId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->addAdSdkPmpModel(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const-string v0, "reportUrl"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->setReportUrl(Ljava/lang/String;)V

    const-string v0, "sdk_ad_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sdk_ad_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_7

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v6, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;

    invoke-direct {v6}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;-><init>()V

    const-string v7, "invenoadvertId"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->setInvenoadvertId(Ljava/lang/String;)V

    const-string v7, "state"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->setState(I)V

    const-string v7, "joinlist"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "joinlist"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v0, v3

    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    invoke-direct {v9}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;-><init>()V

    const-string v10, "spaceId"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setSpaceId(Ljava/lang/String;)V

    const-string v10, "height"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setHeight(I)V

    const-string v10, "joinPlat"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setJoinPlat(Ljava/lang/String;)V

    const-string v10, "priority"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setPriority(I)V

    const-string v10, "spaceType"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setSpaceType(I)V

    const-string v10, "width"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->setWidth(I)V

    invoke-virtual {v9}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->getJoinPlat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v9}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->addAdSdkModel(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->getInvenoadvertId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->addAdSdkListItem(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public addAdSdkListItem(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addAdSdkPmpModel(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdSdkRuleMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->adSdkRuleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAdvertList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkAdList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    return-object v0
.end method

.method public setAdSdkRuleMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->adSdkRuleMap:Ljava/util/HashMap;

    return-void
.end method

.method public setAdvertList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    return-void
.end method

.method public setReportUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    return-void
.end method

.method public setSdkAdList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->advertList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->sdkAdList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->adSdkRuleMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->reportUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->json:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
