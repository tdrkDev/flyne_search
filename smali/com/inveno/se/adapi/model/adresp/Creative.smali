.class public Lcom/inveno/se/adapi/model/adresp/Creative;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Creative;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adm:Lcom/inveno/se/adapi/model/adresp/Adm;

.field private adm_type:I

.field private banner_id:Ljava/lang/String;

.field private event_track:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation
.end field

.field private expiration_time:I

.field private interaction_object:Lcom/inveno/se/adapi/model/adresp/InteractionObject;

.field private interaction_type:I

.field private open_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adresp/Creative$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adresp/Creative$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adresp/Creative;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->banner_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->open_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_type:I

    const-class v0, Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_object:Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm_type:I

    const-class v0, Lcom/inveno/se/adapi/model/adresp/Adm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Adm;

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm:Lcom/inveno/se/adapi/model/adresp/Adm;

    sget-object v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->event_track:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->expiration_time:I

    return-void
.end method

.method public static final parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/Creative;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/inveno/se/adapi/model/adresp/Creative;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adresp/Creative;-><init>()V

    const-string v2, "adm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "adm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/model/adresp/Adm;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setAdm(Lcom/inveno/se/adapi/model/adresp/Adm;)V

    :cond_1
    const-string v2, "adm_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "adm_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setAdm_type(I)V

    :cond_2
    const-string v2, "ad_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ad_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setBanner_id(Ljava/lang/String;)V

    :cond_3
    const-string v2, "event_track"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "event_track"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ltz v2, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/EventTrack;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v4}, Lcom/inveno/se/adapi/model/adresp/Creative;->setEvent_track(Ljava/util/List;)V

    :cond_6
    const-string v2, "expiration_duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "expiration_duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setExpiration_time(I)V

    :cond_7
    const-string v2, "interaction_object"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "interaction_object"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setInteraction_object(Lcom/inveno/se/adapi/model/adresp/InteractionObject;)V

    :cond_8
    const-string v2, "interaction_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "interaction_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setInteraction_type(I)V

    :cond_9
    const-string v2, "open_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "open_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/Creative;->setOpen_type(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/inveno/se/adapi/model/adresp/Creative;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm:Lcom/inveno/se/adapi/model/adresp/Adm;

    return-object v0
.end method

.method public getAdm_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm_type:I

    return v0
.end method

.method public getBanner_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->banner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent_track()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->event_track:Ljava/util/List;

    return-object v0
.end method

.method public getExpiration_time()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->expiration_time:I

    return v0
.end method

.method public getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_object:Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    return-object v0
.end method

.method public getInteraction_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_type:I

    return v0
.end method

.method public getOpen_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->open_type:I

    return v0
.end method

.method public setAdm(Lcom/inveno/se/adapi/model/adresp/Adm;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm:Lcom/inveno/se/adapi/model/adresp/Adm;

    return-void
.end method

.method public setAdm_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm_type:I

    return-void
.end method

.method public setBanner_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->banner_id:Ljava/lang/String;

    return-void
.end method

.method public setEvent_track(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->event_track:Ljava/util/List;

    return-void
.end method

.method public setExpiration_time(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->expiration_time:I

    return-void
.end method

.method public setInteraction_object(Lcom/inveno/se/adapi/model/adresp/InteractionObject;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_object:Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    return-void
.end method

.method public setInteraction_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_type:I

    return-void
.end method

.method public setOpen_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->open_type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->banner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->open_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->interaction_object:Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->adm:Lcom/inveno/se/adapi/model/adresp/Adm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->event_track:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/Creative;->expiration_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
