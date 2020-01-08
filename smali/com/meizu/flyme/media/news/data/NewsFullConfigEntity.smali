.class public final Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    primaryKeys = {
        "articleChannelId"
    }
    tableName = "config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;,
        Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;,
        Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;
    }
.end annotation


# instance fields
.field public algoVer:Ljava/lang/String;

.field public articleChannelId:I

.field public config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

.field public disId:Ljava/lang/String;

.field public hasMore:I

.field public mainChannelId:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public subChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
