.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CACHED:Ljava/lang/String; = "cached"

.field public static final CACHENUM:Ljava/lang/String; = "cacheNum"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSH_TYPE:Ljava/lang/String; = "pushType"

.field public static final TAG:Ljava/lang/String; = "ctl"


# instance fields
.field private cacheNum:I

.field private cached:I

.field private pushType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->pushType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cached:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cacheNum:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 49
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;
    .locals 5

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v2, "ctl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse json string error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;
    .locals 5

    .prologue
    .line 100
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;-><init>()V

    .line 101
    if-eqz p0, :cond_3

    .line 103
    :try_start_0
    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->setPushType(I)V

    .line 106
    :cond_0
    const-string v0, "cached"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "cached"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->setCached(I)V

    .line 109
    :cond_1
    const-string v0, "cacheNum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    const-string v0, "cacheNum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->setCacheNum(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_2
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v2, "ctl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " parse control message error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "ctl"

    const-string v2, "no control message can parse "

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheNum()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cacheNum:I

    return v0
.end method

.method public getCached()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cached:I

    return v0
.end method

.method public getPushType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->pushType:I

    return v0
.end method

.method public setCacheNum(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cacheNum:I

    .line 85
    return-void
.end method

.method public setCached(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cached:I

    .line 77
    return-void
.end method

.method public setPushType(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->pushType:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Control{pushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->pushType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cacheNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->pushType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cached:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->cacheNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
