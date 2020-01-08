.class public final Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImgInfo"
.end annotation


# instance fields
.field public bigImgInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$BigImgInfo;",
            ">;"
        }
    .end annotation
.end field

.field public midImgInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$BigImgInfo;",
            ">;"
        }
    .end annotation
.end field

.field public smallImgInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$BigImgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method
