.class public Lcom/inveno/se/adapi/model/adreq/Adspace;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adspace_id:Ljava/lang/String;

.field private adspace_type:I

.field private allowed_html:Ljava/lang/Boolean;

.field private assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private impression_num:I

.field private impression_time:I

.field private interaction_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private key_words:Ljava/lang/String;

.field private open_type:I

.field private support_deeplink:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Adspace$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Adspace$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adreq/Adspace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_type:I

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_num:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->open_type:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_time:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->support_deeplink:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdspace_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAdspace_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_type:I

    return v0
.end method

.method public getAllowed_html()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->height:I

    return v0
.end method

.method public getImpression_num()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_num:I

    return v0
.end method

.method public getImpression_time()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_time:I

    return v0
.end method

.method public getInteraction_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    return-object v0
.end method

.method public getKey_words()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->open_type:I

    return v0
.end method

.method public getSupport_deeplink()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->support_deeplink:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->width:I

    return v0
.end method

.method public setAdspace_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    return-void
.end method

.method public setAdspace_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_type:I

    return-void
.end method

.method public setAllowed_html(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    return-void
.end method

.method public setAssets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->height:I

    return-void
.end method

.method public setImpression_num(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_num:I

    return-void
.end method

.method public setImpression_time(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_time:I

    return-void
.end method

.method public setInteraction_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    return-void
.end method

.method public setKey_words(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    return-void
.end method

.method public setOpen_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->open_type:I

    return-void
.end method

.method public setSupport_deeplink(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->support_deeplink:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->width:I

    return-void
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "adspace_id"

    iget-object v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "adspace_type"

    iget v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_type:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "allowed_html"

    iget-object v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const-string v0, "assets"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "height"

    iget v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->height:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "impression_num"

    iget v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_num:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "impression_time"

    iget v3, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_time:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v2

    :goto_1
    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "interaction_type"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "open_type"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->open_type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "width"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->width:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "support_deeplink"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->support_deeplink:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "key_words"

    iget-object v2, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->adspace_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->allowed_html:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->open_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->interaction_type:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->assets:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->impression_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->key_words:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/Adspace;->support_deeplink:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
