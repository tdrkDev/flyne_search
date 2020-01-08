.class Lcom/meizu/flyme/media/news/lite/f$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$18;->b:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$18;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$18;->b:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$18;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->c(Landroid/content/Context;)V

    .line 2207
    return-void
.end method
