.class Lcom/meizu/advertise/update/h$c;
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
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/meizu/advertise/update/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/meizu/advertise/update/h$c;->a:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/meizu/advertise/update/h$c;->b:Lcom/meizu/advertise/update/e;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/meizu/advertise/update/h$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/advertise/update/h$c;->b:Lcom/meizu/advertise/update/e;

    invoke-static {v0, v1}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
