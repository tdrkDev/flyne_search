.class public Lcom/inveno/transcode/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/inveno/transcode/a/b;


# instance fields
.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/transcode/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/inveno/transcode/a/b;

    invoke-direct {v0}, Lcom/inveno/transcode/a/b;-><init>()V

    sput-object v0, Lcom/inveno/transcode/a/b;->a:Lcom/inveno/transcode/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    .line 23
    return-void
.end method

.method public static a()Lcom/inveno/transcode/a/b;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/inveno/transcode/a/b;->a:Lcom/inveno/transcode/a/b;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, ""

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const-string v0, ""

    .line 64
    :try_start_0
    const-string v1, "(?<=//|)((\\w)+\\.)+\\w+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inveno/transcode/a/a;
    .locals 2

    .prologue
    .line 36
    invoke-static {p1}, Lcom/inveno/transcode/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/a/a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/inveno/transcode/a/a;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 33
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/transcode/a/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
