.class Lcom/meizu/flyme/media/news/lite/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/l;->f(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/l;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/l;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/l;->e(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v9

    .line 107
    const-string v0, "stay"

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 108
    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/l;->f(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 109
    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/l;->g(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 110
    invoke-static {v3}, Lcom/meizu/flyme/media/news/lite/l;->h(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 111
    invoke-static {v4}, Lcom/meizu/flyme/media/news/lite/l;->i(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 112
    invoke-static {v5}, Lcom/meizu/flyme/media/news/lite/l;->j(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v8}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/meizu/flyme/media/news/lite/f;->h(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v10, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 115
    invoke-static {v10}, Lcom/meizu/flyme/media/news/lite/l;->c(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I

    move-result v8

    .line 107
    invoke-static/range {v0 .. v9}, Lcom/meizu/flyme/media/news/lite/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 118
    const-string v0, "play"

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 119
    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/l;->f(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 120
    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/l;->g(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 121
    invoke-static {v3}, Lcom/meizu/flyme/media/news/lite/l;->h(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 122
    invoke-static {v4}, Lcom/meizu/flyme/media/news/lite/l;->i(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 123
    invoke-static {v5}, Lcom/meizu/flyme/media/news/lite/l;->j(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v8}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/meizu/flyme/media/news/lite/f;->h(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v10, p0, Lcom/meizu/flyme/media/news/lite/l$3;->a:Lcom/meizu/flyme/media/news/lite/l;

    .line 126
    invoke-static {v10}, Lcom/meizu/flyme/media/news/lite/l;->c(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I

    move-result v8

    .line 118
    invoke-static/range {v0 .. v9}, Lcom/meizu/flyme/media/news/lite/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 128
    return-void
.end method
