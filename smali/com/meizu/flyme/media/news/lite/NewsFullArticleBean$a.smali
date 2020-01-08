.class public Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->a:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->c:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 830
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->a:I

    .line 831
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->b:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 846
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->c:I

    .line 847
    return-void
.end method
