.class public Lcom/meizu/gslb2/GslbManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/gslb2/GslbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/meizu/gslb2/q$a;

.field private c:Lcom/meizu/gslb2/n;

.field private d:Lcom/meizu/gslb2/k;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Z

.field private j:Lcom/meizu/gslb2/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager$a;->g:Ljava/lang/String;

    .line 145
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/meizu/gslb2/GslbManager$a;->h:J

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gslb2/GslbManager$a;->i:Z

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/meizu/gslb2/GslbManager$a;->a:Landroid/content/Context;

    .line 154
    return-void
.end method


# virtual methods
.method public a(Lcom/meizu/gslb2/k;)Lcom/meizu/gslb2/GslbManager$a;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/meizu/gslb2/GslbManager$a;->d:Lcom/meizu/gslb2/k;

    .line 179
    return-object p0
.end method

.method public a(Z)Lcom/meizu/gslb2/GslbManager$a;
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/meizu/gslb2/GslbManager$a;->i:Z

    .line 194
    return-object p0
.end method

.method public a()Lcom/meizu/gslb2/GslbManager;
    .locals 13

    .prologue
    .line 203
    new-instance v0, Lcom/meizu/gslb2/GslbManager;

    iget-object v1, p0, Lcom/meizu/gslb2/GslbManager$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/gslb2/GslbManager$a;->b:Lcom/meizu/gslb2/q$a;

    iget-object v3, p0, Lcom/meizu/gslb2/GslbManager$a;->c:Lcom/meizu/gslb2/n;

    iget-object v4, p0, Lcom/meizu/gslb2/GslbManager$a;->d:Lcom/meizu/gslb2/k;

    iget-object v5, p0, Lcom/meizu/gslb2/GslbManager$a;->e:Ljava/util/concurrent/Executor;

    iget-wide v6, p0, Lcom/meizu/gslb2/GslbManager$a;->h:J

    iget-boolean v8, p0, Lcom/meizu/gslb2/GslbManager$a;->f:Z

    iget-object v9, p0, Lcom/meizu/gslb2/GslbManager$a;->g:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/meizu/gslb2/GslbManager$a;->i:Z

    iget-object v11, p0, Lcom/meizu/gslb2/GslbManager$a;->j:Lcom/meizu/gslb2/j;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/meizu/gslb2/GslbManager;-><init>(Landroid/content/Context;Lcom/meizu/gslb2/q$a;Lcom/meizu/gslb2/n;Lcom/meizu/gslb2/k;Ljava/util/concurrent/Executor;JZLjava/lang/String;ZLcom/meizu/gslb2/j;Lcom/meizu/gslb2/GslbManager$1;)V

    return-object v0
.end method
