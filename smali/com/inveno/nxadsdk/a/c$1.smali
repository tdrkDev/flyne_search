.class Lcom/inveno/nxadsdk/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/c;->a(Ljava/lang/String;Lcom/inveno/nxadinf/config/NxGps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
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

.field final synthetic b:Lcom/inveno/nxadsdk/a/c;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/c;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/c$1;->b:Lcom/inveno/nxadsdk/a/c;

    iput-object p2, p0, Lcom/inveno/nxadsdk/a/c$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/a/c$1;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
