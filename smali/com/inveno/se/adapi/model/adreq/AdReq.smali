.class public Lcom/inveno/se/adapi/model/adreq/AdReq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/AdReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adspaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;"
        }
    .end annotation
.end field

.field private api_version:Ljava/lang/String;

.field private app:Lcom/inveno/se/adapi/model/adreq/App;

.field private bid:Ljava/lang/String;

.field private device:Lcom/inveno/se/adapi/model/adreq/Device;

.field private gps:Lcom/inveno/se/adapi/model/adreq/Gps;

.field private is_debug:Z

.field private network:Lcom/inveno/se/adapi/model/adreq/Network;

.field private ua:Ljava/lang/String;

.field private user:Lcom/inveno/se/adapi/model/adreq/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/AdReq$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/AdReq$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adreq/AdReq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/App;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/Device;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/Network;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/Gps;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/Gps;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    const-class v0, Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/User;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    const-class v1, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->is_debug:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdspaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    return-object v0
.end method

.method public getApi_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    return-object v0
.end method

.method public getApp()Lcom/inveno/se/adapi/model/adreq/App;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    return-object v0
.end method

.method public getBid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Lcom/inveno/se/adapi/model/adreq/Device;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    return-object v0
.end method

.method public getGps()Lcom/inveno/se/adapi/model/adreq/Gps;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    return-object v0
.end method

.method public getNetwork()Lcom/inveno/se/adapi/model/adreq/Network;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/inveno/se/adapi/model/adreq/User;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    return-object v0
.end method

.method public isIs_debug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->is_debug:Z

    return v0
.end method

.method public setAdspaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    return-void
.end method

.method public setApi_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    return-void
.end method

.method public setApp(Lcom/inveno/se/adapi/model/adreq/App;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    return-void
.end method

.method public setGps(Lcom/inveno/se/adapi/model/adreq/Gps;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    return-void
.end method

.method public setIs_debug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->is_debug:Z

    return-void
.end method

.method public setNetwork(Lcom/inveno/se/adapi/model/adreq/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    return-void
.end method

.method public setUa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/inveno/se/adapi/model/adreq/User;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "adspaces1"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "adspaces2"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "adspaces.get(i).toJsonObject() is null"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-class v1, Lcom/inveno/se/adapi/model/adreq/AdReq;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adspacesArray:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const-string v0, "adspaces"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "api_version"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    if-eqz v0, :cond_4

    const-string v0, "app"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/App;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "bid"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    if-eqz v0, :cond_6

    const-string v0, "device"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/Device;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    if-eqz v0, :cond_7

    const-string v0, "gps"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/Gps;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v0, "is_debug"

    iget-boolean v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->is_debug:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    if-eqz v0, :cond_8

    const-string v0, "network"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/Network;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "ua"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    if-eqz v0, :cond_a

    const-string v0, "user"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/User;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->bid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->api_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->ua:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->app:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->network:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->gps:Lcom/inveno/se/adapi/model/adreq/Gps;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->adspaces:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/inveno/se/adapi/model/adreq/AdReq;->is_debug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
