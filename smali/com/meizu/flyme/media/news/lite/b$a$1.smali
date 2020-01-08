.class Lcom/meizu/flyme/media/news/lite/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/b$a;-><init>(Lcom/meizu/flyme/media/news/lite/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/b;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/b$a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/b$a;Lcom/meizu/flyme/media/news/lite/b;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->a:Lcom/meizu/flyme/media/news/lite/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget v0, v0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/b$a;->f:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/b;->c(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/b$a;->f:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/b;->c(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/flyme/media/news/lite/b$c;->a()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget v0, v0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/lite/b$a;->f:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 545
    const-string v1, "NewsFullAdapter"

    const-string v2, "start activity: context is not activity!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$a$1;->b:Lcom/meizu/flyme/media/news/lite/b$a;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/lite/b$a;->f:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
