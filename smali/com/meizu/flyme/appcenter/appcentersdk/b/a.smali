.class public Lcom/meizu/flyme/appcenter/appcentersdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    const-string v1, "position_id"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    const-string v1, "request_id"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    const-string v1, "kw"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 34
    const-string v1, "biz"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 37
    const-string v1, "download_pkg"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40
    const-string v1, "status"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 44
    const-string v1, "action"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_6
    return-object v0
.end method
