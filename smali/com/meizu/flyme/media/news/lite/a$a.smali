.class Lcom/meizu/flyme/media/news/lite/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method private constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$a;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/media/news/lite/a;Lcom/meizu/flyme/media/news/lite/a$1;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/a$a;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$a;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->i(Lcom/meizu/flyme/media/news/lite/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 528
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 531
    :goto_0
    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$a;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->k(Lcom/meizu/flyme/media/news/lite/a;)V

    .line 536
    :cond_0
    return-void

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
