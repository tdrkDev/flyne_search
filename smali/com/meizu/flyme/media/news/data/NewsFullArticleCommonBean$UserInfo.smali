.class public final Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation


# instance fields
.field public articleCount:I

.field public contentSign:I

.field public cpAuthorId:Ljava/lang/String;

.field public cpId:J

.field public createTime:J

.field public desc:Ljava/lang/String;

.field public followCount:I

.field public homeUrl:Ljava/lang/String;

.field public hot:I

.field public id:J

.field public img:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public openType:I

.field public recommendStar:F

.field public status:I

.field public videoCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method
