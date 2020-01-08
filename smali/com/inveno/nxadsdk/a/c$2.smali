.class Lcom/inveno/nxadsdk/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/c;->a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inveno/nxadsdk/b/a;

.field final synthetic c:Lcom/inveno/nxadsdk/a/c;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/c;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/c$2;->c:Lcom/inveno/nxadsdk/a/c;

    iput-object p2, p0, Lcom/inveno/nxadsdk/a/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/nxadsdk/a/c$2;->b:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig  onSuccess  appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/nxadsdk/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$2;->b:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$2;->b:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$2;->b:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c$2;->b:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
