.class public Lcom/inveno/transcode/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "WIFI"

    sput-object v0, Lcom/inveno/transcode/a/c;->a:Ljava/lang/String;

    .line 46
    sput v1, Lcom/inveno/transcode/a/c;->d:I

    .line 47
    sput v1, Lcom/inveno/transcode/a/c;->e:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/inveno/transcode/a/c;->c:Ljava/lang/String;

    return-object v0
.end method
