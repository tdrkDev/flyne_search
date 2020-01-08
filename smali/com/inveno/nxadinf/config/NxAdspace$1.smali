.class final Lcom/inveno/nxadinf/config/NxAdspace$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/nxadinf/config/NxAdspace;
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
        "Lcom/inveno/nxadinf/config/NxAdspace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/inveno/nxadinf/config/NxAdspace;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/inveno/nxadinf/config/NxAdspace;

    invoke-direct {v0, p1}, Lcom/inveno/nxadinf/config/NxAdspace;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/inveno/nxadinf/config/NxAdspace;
    .locals 1

    .prologue
    .line 226
    new-array v0, p1, [Lcom/inveno/nxadinf/config/NxAdspace;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/inveno/nxadinf/config/NxAdspace$1;->a(Landroid/os/Parcel;)Lcom/inveno/nxadinf/config/NxAdspace;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/inveno/nxadinf/config/NxAdspace$1;->a(I)[Lcom/inveno/nxadinf/config/NxAdspace;

    move-result-object v0

    return-object v0
.end method
