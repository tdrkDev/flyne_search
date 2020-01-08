.class public Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$Code;,
        Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public code:I

.field public data:Ljava/lang/String;

.field public hostVersionCode:I

.field public sourceApk:Ljava/lang/String;

.field public sourceApkInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$1;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApk:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApk:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApk:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->hostVersionCode:I

    .line 135
    return-void
.end method

.method public static createPackageInfo(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 182
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "pkgname"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    :cond_1
    if-eqz p2, :cond_2

    .line 189
    const-string v0, "versioncode"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 154
    check-cast p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    .line 156
    iget v2, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    iget v3, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    if-ne v2, v3, :cond_0

    .line 157
    iget v2, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    iget v3, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    if-ne v2, v3, :cond_0

    .line 158
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 167
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseAidlMsg{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 120
    iget v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->hostVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void
.end method
