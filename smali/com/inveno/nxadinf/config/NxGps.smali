.class public Lcom/inveno/nxadinf/config/NxGps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/nxadinf/config/NxGps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:D

.field private c:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/inveno/nxadinf/config/NxGps$1;

    invoke-direct {v0}, Lcom/inveno/nxadinf/config/NxGps$1;-><init>()V

    sput-object v0, Lcom/inveno/nxadinf/config/NxGps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxGps;->a:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->b:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->c:D

    .line 76
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/inveno/nxadinf/config/NxGps;->a:I

    return v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->b:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->c:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/inveno/nxadinf/config/NxGps;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    iget-wide v0, p0, Lcom/inveno/nxadinf/config/NxGps;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    return-void
.end method
