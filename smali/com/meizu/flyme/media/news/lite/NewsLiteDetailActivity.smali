.class public Lcom/meizu/flyme/media/news/lite/NewsLiteDetailActivity;
.super Lcom/meizu/flyme/media/news/base/BaseNewsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/meizu/flyme/media/news/base/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsLiteDetailActivity;->b()Lcom/meizu/flyme/media/news/lite/l;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/meizu/flyme/media/news/lite/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/meizu/flyme/media/news/lite/l;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/l;-><init>()V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsLiteDetailActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 33
    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 35
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsLiteDetailActivity;->onBackPressed()V

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
