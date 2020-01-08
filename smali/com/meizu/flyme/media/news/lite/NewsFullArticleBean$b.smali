.class public Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->a:Ljava/lang/String;

    .line 781
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->b:Ljava/lang/String;

    .line 789
    return-void
.end method
