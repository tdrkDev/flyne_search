.class public final Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extend"
.end annotation


# instance fields
.field public clickUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public disLike:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public needClickEvent:I

.field public needExposureEvent:I

.field public realLogUrl:Ljava/lang/String;

.field public recoId:Ljava/lang/String;

.field public showUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    return-void
.end method
