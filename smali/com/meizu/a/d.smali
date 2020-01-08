.class public Lcom/meizu/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/meizu/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "Logger"

    sput-object v0, Lcom/meizu/a/d;->a:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/meizu/a/c;->a()Lcom/meizu/a/c;

    move-result-object v0

    sput-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    sget-object v1, Lcom/meizu/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/meizu/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    sget-object v1, Lcom/meizu/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Lcom/meizu/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    sget-object v1, Lcom/meizu/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/meizu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/meizu/a/d;->b:Lcom/meizu/a/b;

    sget-object v1, Lcom/meizu/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/meizu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
