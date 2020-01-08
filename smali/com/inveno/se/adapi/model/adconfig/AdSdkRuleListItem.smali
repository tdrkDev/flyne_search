.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ad_configid:Ljava/lang/String;

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;",
            ">;"
        }
    .end annotation
.end field

.field public scenario:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->rules:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;-><init>()V

    const-string v1, "scenario"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->setScenario(Ljava/lang/String;)V

    const-string v1, "ad_configid"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->setAd_configid(Ljava/lang/String;)V

    const-string v1, "rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;->parse(Lorg/json/JSONArray;)Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->setRules(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAd_configid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->rules:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScenario()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_configid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->rules:Ljava/util/ArrayList;

    return-void
.end method

.method public setScenario(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->scenario:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->ad_configid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->rules:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
