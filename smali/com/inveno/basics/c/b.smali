.class public Lcom/inveno/basics/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->f()V

    .line 129
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 29
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    if-eqz p1, :cond_0

    .line 36
    const-string v0, "fitXY"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    if-nez p4, :cond_2

    .line 38
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->h()Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    .line 40
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/h;

    .line 41
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->f()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->h()Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p4}, Lcom/bumptech/glide/d/d;->a(I)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    .line 47
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/h;

    .line 48
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 49
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->f()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;

    goto :goto_0

    .line 52
    :cond_3
    if-nez p4, :cond_4

    .line 53
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    .line 54
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->f()Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    .line 55
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/h;

    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->f()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;

    goto/16 :goto_0

    .line 59
    :cond_4
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    .line 60
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->f()Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p4}, Lcom/bumptech/glide/d/d;->a(I)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    .line 62
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/h;

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->f()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;

    goto/16 :goto_0
.end method
