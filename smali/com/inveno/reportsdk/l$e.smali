.class Lcom/inveno/reportsdk/l$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/reportsdk/l$e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/inveno/reportsdk/l$e;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/inveno/reportsdk/l$e;->e:J

    iput p5, p0, Lcom/inveno/reportsdk/l$e;->a:I

    return-void
.end method


# virtual methods
.method a(I)Lcom/inveno/reportsdk/l$e;
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/l$e;->h:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lcom/inveno/reportsdk/l$e;->h:I

    :cond_0
    return-object p0
.end method

.method a(J)Lcom/inveno/reportsdk/l$e;
    .locals 1

    iput-wide p1, p0, Lcom/inveno/reportsdk/l$e;->f:J

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/l$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/inveno/reportsdk/l$f;
    .locals 13

    new-instance v0, Lcom/inveno/reportsdk/l$f;

    iget-object v1, p0, Lcom/inveno/reportsdk/l$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inveno/reportsdk/l$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/reportsdk/l$e;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/inveno/reportsdk/l$e;->e:J

    iget-wide v6, p0, Lcom/inveno/reportsdk/l$e;->f:J

    iget-wide v8, p0, Lcom/inveno/reportsdk/l$e;->g:J

    iget v10, p0, Lcom/inveno/reportsdk/l$e;->a:I

    iget-object v11, p0, Lcom/inveno/reportsdk/l$e;->i:Ljava/lang/String;

    iget-object v12, p0, Lcom/inveno/reportsdk/l$e;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/inveno/reportsdk/l$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/l$e;->i:Ljava/lang/String;

    return-object p0
.end method

.method b()Lcom/inveno/reportsdk/l$g;
    .locals 9

    new-instance v0, Lcom/inveno/reportsdk/l$g;

    iget-object v1, p0, Lcom/inveno/reportsdk/l$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inveno/reportsdk/l$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/reportsdk/l$e;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/inveno/reportsdk/l$e;->e:J

    iget v6, p0, Lcom/inveno/reportsdk/l$e;->h:I

    iget-object v7, p0, Lcom/inveno/reportsdk/l$e;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/inveno/reportsdk/l$e;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/inveno/reportsdk/l$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method c(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/l$e;->j:Ljava/lang/String;

    return-object p0
.end method
