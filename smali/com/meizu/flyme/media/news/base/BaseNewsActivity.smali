.class public abstract Lcom/meizu/flyme/media/news/base/BaseNewsActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/base/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a()Lcom/meizu/flyme/media/news/base/b;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/meizu/flyme/media/news/base/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/base/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/base/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/flyme/media/news/base/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->f(Landroid/app/Activity;)V

    .line 71
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->d(Landroid/app/Activity;)V

    .line 59
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onPause()V

    .line 60
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onRestart()V

    .line 47
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->b(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/flyme/media/news/base/b;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 83
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->c(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/flyme/media/news/base/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->a(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/flyme/media/news/base/BaseNewsActivity;->a:Lcom/meizu/flyme/media/news/base/b;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/base/b;->e(Landroid/app/Activity;)V

    .line 65
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    .line 66
    return-void
.end method
