.class public final Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoreConfig"
.end annotation


# instance fields
.field public openCategoryId:I

.field public openType:I

.field public showAuthor:I
    .annotation build Landroid/arch/persistence/room/Embedded;
        prefix = "more"
    .end annotation
.end field

.field public showChange:I
    .annotation build Landroid/arch/persistence/room/Embedded;
        prefix = "more"
    .end annotation
.end field

.field public showTime:I
    .annotation build Landroid/arch/persistence/room/Embedded;
        prefix = "more"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
