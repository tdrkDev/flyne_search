.class public Lcom/inveno/se/adapi/model/adreq/Device;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private brand:Ljava/lang/String;

.field private device_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private device_type:I

.field private language:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private os_type:I

.field private os_version:Ljava/lang/String;

.field private screen_density:D

.field private screen_height:I

.field private screen_orientation:I

.field private screen_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Device$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Device$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adreq/Device;->CREATOR:Landroid/os/Parcelable$Creator;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    const-class v1, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_density:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_orientation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/DeviceId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    return-object v0
.end method

.method public getDevice_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_type:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOs_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_type:I

    return v0
.end method

.method public getOs_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen_density()D
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_density:D

    return-wide v0
.end method

.method public getScreen_height()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_height:I

    return v0
.end method

.method public getScreen_orientation()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_orientation:I

    return v0
.end method

.method public getScreen_width()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_width:I

    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/DeviceId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    return-void
.end method

.method public setDevice_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_type:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    return-void
.end method

.method public setOs_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_type:I

    return-void
.end method

.method public setOs_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    return-void
.end method

.method public setScreen_density(D)V
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_density:D

    return-void
.end method

.method public setScreen_height(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_height:I

    return-void
.end method

.method public setScreen_orientation(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_orientation:I

    return-void
.end method

.method public setScreen_width(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_width:I

    return-void
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "brand"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v0, "device_id"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "device_type"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "language"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "model"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "os_type"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "os_version"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "screen_density"

    iget-wide v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_density:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "screen_height"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "screen_orientation"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_orientation:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "screen_width"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_width:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_id:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->os_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->brand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->device_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_density:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Device;->screen_orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
