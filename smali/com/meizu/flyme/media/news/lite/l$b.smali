.class final Lcom/meizu/flyme/media/news/lite/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/recall/InstallView$OnInstallViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/l;

.field private final b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/l;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l$b;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/l$b;->b:Landroid/net/Uri;

    .line 172
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$b;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/l;->k(Lcom/meizu/flyme/media/news/lite/l;)Lcom/meizu/common/recall/InstallView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/common/recall/InstallView;->setVisibility(I)V

    .line 177
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/k;->b(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public onFindSystemAppPathFailed()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/k;->b(I)V

    .line 214
    :cond_0
    const-string v0, "com.meizu.media.reader"

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$b;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/l;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/b;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public onInstallCompelte()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onInstallError(I)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onOpen()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$b;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/l;->a()Landroid/app/Activity;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$b;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$b;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/l;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/meizu/flyme/media/news/a/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    :cond_0
    return-void
.end method

.method public onStartInstall()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/k;->b(I)V

    .line 197
    :cond_0
    return-void
.end method
