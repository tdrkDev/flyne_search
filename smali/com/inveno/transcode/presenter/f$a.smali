.class Lcom/inveno/transcode/presenter/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/inveno/transcode/presenter/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/inveno/transcode/presenter/f;

    invoke-direct {v0}, Lcom/inveno/transcode/presenter/f;-><init>()V

    sput-object v0, Lcom/inveno/transcode/presenter/f$a;->a:Lcom/inveno/transcode/presenter/f;

    return-void
.end method

.method static synthetic a()Lcom/inveno/transcode/presenter/f;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/inveno/transcode/presenter/f$a;->a:Lcom/inveno/transcode/presenter/f;

    return-object v0
.end method
