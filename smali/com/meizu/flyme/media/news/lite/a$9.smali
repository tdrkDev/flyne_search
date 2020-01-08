.class Lcom/meizu/flyme/media/news/lite/a$9;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$9;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$9;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->k(Lcom/meizu/flyme/media/news/lite/a;)V

    .line 518
    return-void
.end method
