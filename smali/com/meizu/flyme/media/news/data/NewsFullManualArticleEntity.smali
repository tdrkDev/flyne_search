.class public final Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;
.super Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    primaryKeys = {
        "contentId",
        "cpEntityId",
        "cpId"
    }
    tableName = "manual_articles"
.end annotation


# instance fields
.field public articleChannelId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;-><init>()V

    return-void
.end method
