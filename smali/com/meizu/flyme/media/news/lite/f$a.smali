.class public final Lcom/meizu/flyme/media/news/lite/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->a:Landroid/content/Context;

    .line 2012
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->b:I

    .line 2013
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->c:I

    .line 2014
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/f$a;->d:I

    .line 2015
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/f$a;->e:I

    .line 2016
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->h:I

    .line 2017
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->i:I

    .line 2018
    const/16 v0, 0x384

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->f:I

    .line 2019
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f$a;->j:I

    .line 2020
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 2116
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->m()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2117
    const-class v1, Lcom/meizu/flyme/media/news/lite/f;

    monitor-enter v1

    .line 2118
    :try_start_0
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->m()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2119
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/flyme/media/news/lite/f;-><init>(Lcom/meizu/flyme/media/news/lite/f$a;Lcom/meizu/flyme/media/news/lite/f$1;)V

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/f;->e(Lcom/meizu/flyme/media/news/lite/f;)Lcom/meizu/flyme/media/news/lite/f;

    .line 2121
    :cond_0
    monitor-exit v1

    .line 2123
    :cond_1
    return-void

    .line 2121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
