.class Lcom/inveno/basics/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/c/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

.field final synthetic d:Lcom/inveno/nxadsdk/b/a;

.field final synthetic e:Lcom/inveno/basics/c/d;


# direct methods
.method constructor <init>(Lcom/inveno/basics/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    iput-object p2, p0, Lcom/inveno/basics/c/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/basics/c/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/basics/c/d$1;->c:Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    iput-object p5, p0, Lcom/inveno/basics/c/d$1;->d:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;I)I

    .line 101
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig   onSuccess   o:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  adconfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :adSdkRule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->c:Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    check-cast p1, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-static {v0, p1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    .line 106
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    iget-object v1, p0, Lcom/inveno/basics/c/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    invoke-static {v3}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inveno/nxadsdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 109
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig   onSuccess   rules:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    invoke-static {v2}, Lcom/inveno/basics/c/d;->b(Lcom/inveno/basics/c/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->e:Lcom/inveno/basics/c/d;

    iget-object v1, p0, Lcom/inveno/basics/c/d$1;->d:Lcom/inveno/nxadsdk/b/a;

    iget-object v2, p0, Lcom/inveno/basics/c/d$1;->c:Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    invoke-static {v0, v1, v2}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    .line 115
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->d:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/inveno/basics/c/d$1;->d:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method
