.class Lcom/meizu/advertise/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/meizu/advertise/b/a$a;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/meizu/advertise/b/a$a;->b:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/meizu/advertise/b/a$a;->c:Ljava/lang/Throwable;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Lcom/meizu/advertise/b/a;->a()Lcom/meizu/a/a;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "D"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "AdLog-Host"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v1, "W"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "AdLog-Host"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "E"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/meizu/advertise/b/a$a;->c:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 103
    const-string v1, "AdLog-Host"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v1, "AdLog-Host"

    iget-object v2, p0, Lcom/meizu/advertise/b/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/advertise/b/a$a;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
