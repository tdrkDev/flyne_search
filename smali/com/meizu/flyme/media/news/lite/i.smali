.class public Lcom/meizu/flyme/media/news/lite/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/i;->c:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/i;->d:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/i;->e:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/i;->h:Z

    .line 19
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/i;->i:Z

    .line 20
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/i;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/i;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/i;->a:I

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/i;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/i;->c:Z

    .line 32
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/i;->b:I

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/i;->h:Z

    .line 52
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/i;->i:Z

    .line 56
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/i;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/i;->j:Z

    .line 60
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/i;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/i;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/i;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/i;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/i;->j:Z

    return v0
.end method
