.class Lcom/inveno/reportsdk/s;
.super Lcom/inveno/reportsdk/t;


# instance fields
.field private a:Lcom/inveno/reportsdk/x;


# direct methods
.method constructor <init>(Lcom/inveno/reportsdk/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/inveno/reportsdk/t;-><init>()V

    iput-object p1, p0, Lcom/inveno/reportsdk/s;->a:Lcom/inveno/reportsdk/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/inveno/reportsdk/e;->a()Lcom/inveno/reportsdk/e;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/reportsdk/s;->a:Lcom/inveno/reportsdk/x;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/e;->a(Lcom/inveno/reportsdk/x;)J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsertReportDataOperation{reportData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/reportsdk/s;->a:Lcom/inveno/reportsdk/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
