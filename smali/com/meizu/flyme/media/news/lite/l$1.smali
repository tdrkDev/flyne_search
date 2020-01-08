.class Lcom/meizu/flyme/media/news/lite/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/l;->a(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/l;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/l;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l$1;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "com.meizu.media.reader"

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$1;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/l;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/b;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    return-void
.end method
