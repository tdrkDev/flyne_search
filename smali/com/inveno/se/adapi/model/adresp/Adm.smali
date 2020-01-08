.class public Lcom/inveno/se/adapi/model/adresp/Adm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Adm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativ:Lcom/inveno/se/adapi/model/adresp/Native;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adresp/Adm$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adresp/Adm$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adresp/Adm;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->source:Ljava/lang/String;

    const-class v0, Lcom/inveno/se/adapi/model/adresp/Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Native;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->nativ:Lcom/inveno/se/adapi/model/adresp/Native;

    return-void
.end method

.method public static final parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/Adm;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/inveno/se/adapi/model/adresp/Adm;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adresp/Adm;-><init>()V

    const-string v2, "adm_source"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "adm_source"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Adm;->setSource(Ljava/lang/String;)V

    :cond_1
    const-string v2, "adm_native"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "adm_native"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/model/adresp/Native;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Adm;->setNativ(Lcom/inveno/se/adapi/model/adresp/Native;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/inveno/se/adapi/model/adresp/Adm;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativ()Lcom/inveno/se/adapi/model/adresp/Native;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->nativ:Lcom/inveno/se/adapi/model/adresp/Native;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setNativ(Lcom/inveno/se/adapi/model/adresp/Native;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->nativ:Lcom/inveno/se/adapi/model/adresp/Native;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->source:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Adm;->nativ:Lcom/inveno/se/adapi/model/adresp/Native;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
