.class Lcom/inveno/basics/c/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/nxadsdk/b/a;

.field final synthetic b:Lcom/inveno/basics/c/d;


# direct methods
.method constructor <init>(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    iput-object p2, p0, Lcom/inveno/basics/c/d$2;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 132
    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;I)I

    .line 136
    iget-object v1, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    move-object v0, p1

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-static {v1, v0}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    .line 138
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    invoke-static {v0}, Lcom/inveno/basics/c/d;->c(Lcom/inveno/basics/c/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    iget-object v1, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    invoke-static {v1}, Lcom/inveno/basics/c/d;->c(Lcom/inveno/basics/c/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    invoke-static {v2}, Lcom/inveno/basics/c/d;->d(Lcom/inveno/basics/c/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/c/d$2;->b:Lcom/inveno/basics/c/d;

    invoke-static {v3}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inveno/nxadsdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/basics/c/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V

    .line 148
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/inveno/basics/c/d$2;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
