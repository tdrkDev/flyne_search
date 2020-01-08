.class public abstract Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;
.super Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$Extend;,
        Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;,
        Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;,
        Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public authorId:I

.field public buryCount:I

.field public category:Ljava/lang/String;

.field public categoryId:I

.field public collectCount:I

.field public commentCount:I

.field public content:Ljava/lang/String;

.field public contentSourceId:I

.field public cpRecomPos:J

.field public cp_recom_time:J

.field public createTime:J

.field public desc:Ljava/lang/String;

.field public diggCount:I

.field public entityUniqId:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

.field public json_url:Ljava/lang/String;

.field public keyWords:Ljava/lang/String;

.field public keyWords_freq:Ljava/lang/String;

.field public manualPosition:I

.field public manualShowType:I

.field public publishTime:J

.field public release_time:J

.field public requestId:Ljava/lang/String;

.field public ruleId:I

.field public ruleSign:Ljava/lang/String;

.field public scheme:Ljava/lang/String;

.field public shareCount:I

.field public share_url:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public status:I

.field public subTitle:Ljava/lang/String;

.field public suggestShowType:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public update_time:J

.field public userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

.field public videoDuration:I

.field public viewCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;-><init>()V

    return-void
.end method
