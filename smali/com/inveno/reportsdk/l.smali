.class public abstract Lcom/inveno/reportsdk/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/reportsdk/l$a;,
        Lcom/inveno/reportsdk/l$e;,
        Lcom/inveno/reportsdk/l$g;,
        Lcom/inveno/reportsdk/l$f;,
        Lcom/inveno/reportsdk/l$c;,
        Lcom/inveno/reportsdk/l$h;,
        Lcom/inveno/reportsdk/l$d;,
        Lcom/inveno/reportsdk/l$j;,
        Lcom/inveno/reportsdk/l$i;,
        Lcom/inveno/reportsdk/l$b;
    }
.end annotation


# instance fields
.field final a:I

.field final b:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/inveno/reportsdk/l;->a:I

    iput-wide p2, p0, Lcom/inveno/reportsdk/l;->b:J

    return-void
.end method

.method static a(JJ)Ljava/lang/String;
    .locals 4

    sub-long v0, p0, p2

    const-wide/16 v2, 0x3e7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Lorg/json/JSONObject;
.end method

.method b()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/inveno/reportsdk/l;->b:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
