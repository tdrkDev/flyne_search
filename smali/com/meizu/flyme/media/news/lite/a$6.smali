.class Lcom/meizu/flyme/media/news/lite/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$6;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$6;->a:Lcom/meizu/flyme/media/news/lite/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/lite/a;Z)V

    .line 328
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a$6;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$6;->a:Lcom/meizu/flyme/media/news/lite/a;

    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 329
    return-void
.end method
