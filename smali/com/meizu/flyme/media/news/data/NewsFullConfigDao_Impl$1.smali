.class Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$1;
.super Landroid/arch/persistence/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/c;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 31
    const/4 v0, 0x1

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->articleChannelId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 33
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->configToString(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v4}, Landroid/arch/persistence/a/f;->a(I)V

    .line 39
    :goto_0
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->requestId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 40
    invoke-interface {p1, v5}, Landroid/arch/persistence/a/f;->a(I)V

    .line 44
    :goto_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->disId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 45
    invoke-interface {p1, v6}, Landroid/arch/persistence/a/f;->a(I)V

    .line 49
    :goto_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->algoVer:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 50
    invoke-interface {p1, v7}, Landroid/arch/persistence/a/f;->a(I)V

    .line 54
    :goto_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->mainChannelId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 55
    invoke-interface {p1, v8}, Landroid/arch/persistence/a/f;->a(I)V

    .line 59
    :goto_4
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->subChannelId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 60
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 64
    :goto_5
    const/16 v0, 0x8

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->hasMore:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 65
    return-void

    .line 37
    :cond_0
    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->requestId:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->disId:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->algoVer:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 57
    :cond_4
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->mainChannelId:Ljava/lang/String;

    invoke-interface {p1, v8, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_4

    .line 62
    :cond_5
    const/4 v0, 0x7

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->subChannelId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_5
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$1;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "INSERT OR IGNORE INTO `config`(`articleChannelId`,`config`,`requestId`,`disId`,`algoVer`,`mainChannelId`,`subChannelId`,`hasMore`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
