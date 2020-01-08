.class public Lcom/meizu/flyme/media/news/lite/NewsFullMoreListActivity;
.super Lcom/meizu/flyme/media/news/base/BaseNewsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/meizu/flyme/media/news/base/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/meizu/flyme/media/news/lite/h;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/h;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method
