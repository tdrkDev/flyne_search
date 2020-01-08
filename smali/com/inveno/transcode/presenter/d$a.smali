.class Lcom/inveno/transcode/presenter/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/inveno/transcode/presenter/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/inveno/transcode/presenter/d;

    invoke-direct {v0}, Lcom/inveno/transcode/presenter/d;-><init>()V

    sput-object v0, Lcom/inveno/transcode/presenter/d$a;->a:Lcom/inveno/transcode/presenter/d;

    return-void
.end method

.method static synthetic a()Lcom/inveno/transcode/presenter/d;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/inveno/transcode/presenter/d$a;->a:Lcom/inveno/transcode/presenter/d;

    return-object v0
.end method
