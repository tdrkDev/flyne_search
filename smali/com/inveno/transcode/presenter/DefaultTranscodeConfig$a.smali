.class public Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "https://business.inveno.com/ht_template_config"

    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->b:Z

    .line 67
    const-string v0, "/android_asset/transcode.html"

    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    const-string v1, "://192.168"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "https://business.inveno.com/ht_template_config"

    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    .line 80
    :cond_1
    sget-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meizu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->b:Z

    .line 74
    :cond_0
    return-void
.end method
