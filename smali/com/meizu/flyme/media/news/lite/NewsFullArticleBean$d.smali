.class public Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;->a:Ljava/lang/String;

    .line 860
    return-void
.end method
