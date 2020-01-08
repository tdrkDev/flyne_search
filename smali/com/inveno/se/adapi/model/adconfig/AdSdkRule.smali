.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adspace_id:Ljava/lang/String;

.field public display_type:I

.field public height:I

.field public num:I

.field public pos:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->pos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->display_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->num:I

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "adspace_id"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setAdspace_id(Ljava/lang/String;)V

    const-string v2, "pos"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setPos(I)V

    const-string v2, "display_type"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setDisplay_type(I)V

    const-string v2, "width"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setWidth(I)V

    const-string v2, "height"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setHeight(I)V

    const-string v2, "num"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->setNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdspace_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->display_type:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->height:I

    return v0
.end method

.method public getNum()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->num:I

    return v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->pos:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->width:I

    return v0
.end method

.method public setAdspace_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    return-void
.end method

.method public setDisplay_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->display_type:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->height:I

    return-void
.end method

.method public setNum(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->num:I

    return-void
.end method

.method public setPos(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->pos:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->adspace_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->pos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->display_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
