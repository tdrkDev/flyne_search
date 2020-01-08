.class public abstract Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# instance fields
.field private contentId:J

.field private cpEntityId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private cpId:I

.field private newsAddTime:J

.field private newsChangeTime:J

.field private newsExposeTime:J

.field private newsReadTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->cpEntityId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->contentId:J

    return-wide v0
.end method

.method public getCpEntityId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->cpEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->cpId:I

    return v0
.end method

.method public getNewsAddTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsAddTime:J

    return-wide v0
.end method

.method public getNewsChangeTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsChangeTime:J

    return-wide v0
.end method

.method public getNewsExposeTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsExposeTime:J

    return-wide v0
.end method

.method public getNewsReadTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsReadTime:J

    return-wide v0
.end method

.method public setContentId(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->contentId:J

    .line 89
    return-void
.end method

.method public setCpEntityId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->cpEntityId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCpId(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->cpId:I

    .line 49
    return-void
.end method

.method public setNewsAddTime(J)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsAddTime:J

    .line 81
    return-void
.end method

.method public setNewsChangeTime(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsChangeTime:J

    .line 73
    return-void
.end method

.method public setNewsExposeTime(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsExposeTime:J

    .line 65
    return-void
.end method

.method public setNewsReadTime(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->newsReadTime:J

    .line 57
    return-void
.end method
