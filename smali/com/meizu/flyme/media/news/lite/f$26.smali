.class Lcom/meizu/flyme/media/news/lite/f$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/i;

.field final synthetic c:Lcom/meizu/flyme/media/news/lite/f$b;

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;ILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$26;->d:Lcom/meizu/flyme/media/news/lite/f;

    iput p2, p0, Lcom/meizu/flyme/media/news/lite/f$26;->a:I

    iput-object p3, p0, Lcom/meizu/flyme/media/news/lite/f$26;->b:Lcom/meizu/flyme/media/news/lite/i;

    iput-object p4, p0, Lcom/meizu/flyme/media/news/lite/f$26;->c:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 686
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$26;->d:Lcom/meizu/flyme/media/news/lite/f;

    const/4 v1, 0x3

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f$26;->a:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/f$26;->b:Lcom/meizu/flyme/media/news/lite/i;

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$26;->c:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 687
    return-void
.end method
