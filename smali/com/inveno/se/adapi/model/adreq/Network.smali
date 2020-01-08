.class public Lcom/inveno/se/adapi/model/adreq/Network;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Network;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carrier_id:Ljava/lang/String;

.field private cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

.field private ip:Ljava/lang/String;

.field private network_type:I

.field private wifi_aps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/WiFiAp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Network$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Network$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adreq/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->network_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->carrier_id:Ljava/lang/String;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/SCell;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    sget-object v0, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCarrier_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->carrier_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCellular_id()Lcom/inveno/se/adapi/model/adreq/SCell;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->network_type:I

    return v0
.end method

.method public getWifi_aps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/WiFiAp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    return-object v0
.end method

.method public setCarrier_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Network;->carrier_id:Ljava/lang/String;

    return-void
.end method

.method public setCellular_id(Lcom/inveno/se/adapi/model/adreq/SCell;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    return-void
.end method

.method public setNetwork_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Network;->network_type:I

    return-void
.end method

.method public setWifi_aps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/WiFiAp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    return-void
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "carrier_id"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Network;->carrier_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    if-eqz v0, :cond_0

    const-string v0, "cellular_id"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/SCell;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ip"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "network_type"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Network;->network_type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/WiFiAp;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/WiFiAp;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const-string v0, "wifi_aps"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->network_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->carrier_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->cellular_id:Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Network;->wifi_aps:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
