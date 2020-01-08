.class final Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;
    .locals 1

    .prologue
    .line 138
    new-array v0, p1, [Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$1;->newArray(I)[Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;

    move-result-object v0

    return-object v0
.end method
