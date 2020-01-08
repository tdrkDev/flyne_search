.class public final Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;
.super Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    primaryKeys = {
        "contentId",
        "cpEntityId",
        "cpId"
    }
    tableName = "articles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;,
        Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;,
        Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$BigImgInfo;,
        Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public authorId:I

.field public buryCount:I

.field public category:Ljava/lang/String;

.field public collectCount:I

.field public commentCount:I

.field public content:Ljava/lang/String;

.field public contentSourceId:I

.field public cpRecomTime:J

.field public createTime:J

.field public desc:Ljava/lang/String;

.field public diggCount:I

.field public entityUniqId:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public imgInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

.field public jsonUrl:Ljava/lang/String;

.field public keyWords:Ljava/lang/String;

.field public keywordsFreq:Ljava/lang/String;

.field public publishTime:J

.field public pv:I

.field public releaseTime:J

.field public requestId:Ljava/lang/String;

.field public ruleId:I

.field public ruleSign:Ljava/lang/String;

.field public scheme:Ljava/lang/String;

.field public shareCount:I

.field public shareUrl:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public status:I

.field public subTitle:Ljava/lang/String;

.field public suggestShowType:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public updateTime:J

.field public userInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

.field public videoDuration:I

.field public viewCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;-><init>()V

    return-void
.end method
