.class Lcom/meizu/advertise/update/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/update/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/meizu/advertise/update/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/meizu/advertise/update/h$a;->a:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v1}, Lcom/meizu/advertise/update/e;->e()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v2}, Lcom/meizu/advertise/update/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v3}, Lcom/meizu/advertise/update/e;->j()Z

    move-result v3

    .line 152
    iget-object v4, p0, Lcom/meizu/advertise/update/h$a;->a:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    invoke-static {}, Lcom/meizu/advertise/update/h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v1}, Lcom/meizu/advertise/update/g;->i()V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install success: versionName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/meizu/advertise/update/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->a(Ljava/lang/String;)V

    .line 161
    :goto_0
    new-instance v0, Lcom/meizu/advertise/update/h$c;

    iget-object v1, p0, Lcom/meizu/advertise/update/h$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-direct {v0, v1, v2}, Lcom/meizu/advertise/update/h$c;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    .line 162
    invoke-static {}, Lcom/meizu/advertise/update/h;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/meizu/advertise/update/h$b;

    iget-object v1, p0, Lcom/meizu/advertise/update/h$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/advertise/update/h$a;->b:Lcom/meizu/advertise/update/e;

    invoke-direct {v0, v1, v2}, Lcom/meizu/advertise/update/h$b;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    .line 159
    invoke-static {}, Lcom/meizu/advertise/update/h;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
