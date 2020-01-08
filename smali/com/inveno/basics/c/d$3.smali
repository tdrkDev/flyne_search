.class Lcom/inveno/basics/c/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/nxadsdk/b/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/nxadsdk/b/a;

.field final synthetic b:Lcom/inveno/basics/c/d;


# direct methods
.method constructor <init>(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/inveno/basics/c/d$3;->b:Lcom/inveno/basics/c/d;

    iput-object p2, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/inveno/basics/c/d$3;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/inveno/basics/c/d$3;->a:Lcom/inveno/nxadsdk/b/a;

    const-string v1, "iNativeAds==null || iNativeAds.size()==0"

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
