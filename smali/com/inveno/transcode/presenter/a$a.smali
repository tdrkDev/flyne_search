.class public final Lcom/inveno/transcode/presenter/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/presenter/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/transcode/presenter/a;

.field private final b:Lcom/inveno/transcode/presenter/a$b;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$b;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput-object p2, p0, Lcom/inveno/transcode/presenter/a$a;->b:Lcom/inveno/transcode/presenter/a$b;

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/b;)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0, p1, p2}, Lcom/inveno/transcode/presenter/a$a;-><init>(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$b;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->b:Lcom/inveno/transcode/presenter/a$b;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/a$a;Z)Z
    .locals 0

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/inveno/transcode/presenter/a$a;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    monitor-enter v1

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->b:Lcom/inveno/transcode/presenter/a$b;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 804
    :cond_0
    :try_start_1
    new-instance v0, Lcom/inveno/transcode/presenter/a$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/inveno/transcode/presenter/a$a;->b:Lcom/inveno/transcode/presenter/a$b;

    invoke-virtual {v3, p1}, Lcom/inveno/transcode/presenter/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/inveno/transcode/presenter/a$a$a;-><init>(Lcom/inveno/transcode/presenter/a$a;Ljava/io/OutputStream;Lcom/inveno/transcode/presenter/b;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/inveno/transcode/presenter/a$a;->c:Z

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$a;Z)V

    .line 828
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a$a;->b:Lcom/inveno/transcode/presenter/a$b;

    invoke-static {v1}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/a;->c(Ljava/lang/String;)Z

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$a;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a;->a:Lcom/inveno/transcode/presenter/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$a;Z)V

    .line 840
    return-void
.end method
