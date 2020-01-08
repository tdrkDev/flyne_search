.class public final Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;
.super Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    primaryKeys = {
        "contentId",
        "cpEntityId",
        "cpId"
    }
    tableName = "topics"
.end annotation


# instance fields
.field public createDate:J

.field public headImageUrl:Ljava/lang/String;

.field public lable:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "label"
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;-><init>()V

    return-void
.end method
