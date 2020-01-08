.class Lcom/inveno/transcode/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/inveno/transcode/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/inveno/transcode/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inveno/transcode/a/h;-><init>(Lcom/inveno/transcode/a/i;)V

    sput-object v0, Lcom/inveno/transcode/a/h$a;->a:Lcom/inveno/transcode/a/h;

    return-void
.end method

.method static synthetic a()Lcom/inveno/transcode/a/h;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/inveno/transcode/a/h$a;->a:Lcom/inveno/transcode/a/h;

    return-object v0
.end method
