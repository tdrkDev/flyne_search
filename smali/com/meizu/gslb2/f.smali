.class Lcom/meizu/gslb2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/gslb2/k;


# direct methods
.method public constructor <init>(Lcom/meizu/gslb2/k;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    const-string v1, "GslbCore"

    invoke-interface {v0, v1, p1}, Lcom/meizu/gslb2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    const-string v1, "GslbCore"

    invoke-interface {v0, v1, p1, p2}, Lcom/meizu/gslb2/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    const-string v1, "GslbCore"

    invoke-interface {v0, v1, p1}, Lcom/meizu/gslb2/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    const-string v1, "GslbCore"

    invoke-interface {v0, v1, p1}, Lcom/meizu/gslb2/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/meizu/gslb2/f;->a:Lcom/meizu/gslb2/k;

    const-string v1, "GslbCore"

    invoke-interface {v0, v1, p1}, Lcom/meizu/gslb2/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
