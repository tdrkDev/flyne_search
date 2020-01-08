.class public final Lcom/meizu/flyme/media/news/lite/c$a;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public algoVer:Ljava/lang/String;

.field public config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

.field public disId:Ljava/lang/String;

.field public hasMore:I

.field public mainChannelId:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation
.end field

.field public subChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method
