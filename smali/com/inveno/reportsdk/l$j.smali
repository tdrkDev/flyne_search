.class Lcom/inveno/reportsdk/l$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/reportsdk/l$j;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/inveno/reportsdk/l$j;->b:J

    return-void
.end method


# virtual methods
.method a()Lcom/inveno/reportsdk/l$i;
    .locals 6

    new-instance v0, Lcom/inveno/reportsdk/l$i;

    iget-object v1, p0, Lcom/inveno/reportsdk/l$j;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/inveno/reportsdk/l$j;->b:J

    iget-wide v4, p0, Lcom/inveno/reportsdk/l$j;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/inveno/reportsdk/l$i;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method a(J)Lcom/inveno/reportsdk/l$j;
    .locals 1

    iput-wide p1, p0, Lcom/inveno/reportsdk/l$j;->c:J

    return-object p0
.end method
