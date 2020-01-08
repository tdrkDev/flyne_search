.class public Lcom/inveno/nxadsdk/model/NativeAd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Img;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/nxadsdk/model/NativeAd$1;

    invoke-direct {v0}, Lcom/inveno/nxadsdk/model/NativeAd$1;-><init>()V

    sput-object v0, Lcom/inveno/nxadsdk/model/NativeAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->t:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->o:I

    sget-object v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->p:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->r:Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->u:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->A:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/adapi/model/adresp/Img;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->B:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->n:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Img;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->B:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->p:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->o:I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->e:I

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->f:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->f:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/util/List;
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

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->p:Ljava/util/List;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->t:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->v:Ljava/lang/String;

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->u:Z

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->w:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->x:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->y:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->z:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/NativeAd;->A:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->r:Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/NativeAd;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
