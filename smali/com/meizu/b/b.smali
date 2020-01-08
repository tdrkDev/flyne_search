.class public Lcom/meizu/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/b/b$d;,
        Lcom/meizu/b/b$e;,
        Lcom/meizu/b/b$c;,
        Lcom/meizu/b/b$b;,
        Lcom/meizu/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/meizu/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/meizu/b/b$a;

    invoke-direct {v0}, Lcom/meizu/b/b$a;-><init>()V

    sput-object v0, Lcom/meizu/b/b;->a:Lcom/meizu/b/a;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/meizu/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/meizu/b/a$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/meizu/b/b;->a:Lcom/meizu/b/a;

    invoke-interface {v0, p0}, Lcom/meizu/b/a;->a(Ljava/lang/Class;)Lcom/meizu/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/meizu/b/b;->a:Lcom/meizu/b/a;

    invoke-interface {v0, p0, p1}, Lcom/meizu/b/a;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/meizu/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/meizu/b/b;->a:Lcom/meizu/b/a;

    invoke-interface {v0, p0}, Lcom/meizu/b/a;->a(Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    return-object v0
.end method
