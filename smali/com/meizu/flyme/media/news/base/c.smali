.class public abstract Lcom/meizu/flyme/media/news/base/c;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public redirect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/meizu/flyme/media/news/base/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/flyme/media/news/helper/NewsException;
        }
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/meizu/flyme/media/news/base/c;->code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 25
    iget v0, p0, Lcom/meizu/flyme/media/news/base/c;->code:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/base/c;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/helper/NewsException;->a(ILjava/lang/String;)Lcom/meizu/flyme/media/news/helper/NewsException;

    move-result-object v0

    throw v0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseNewsResponse{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/base/c;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/base/c;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirect=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/base/c;->redirect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
