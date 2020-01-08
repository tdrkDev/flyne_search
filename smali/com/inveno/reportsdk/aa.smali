.class Lcom/inveno/reportsdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Lcom/inveno/reportsdk/x;

.field final synthetic b:Lcom/inveno/reportsdk/y;


# direct methods
.method constructor <init>(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/aa;->b:Lcom/inveno/reportsdk/y;

    iput-object p2, p0, Lcom/inveno/reportsdk/aa;->a:Lcom/inveno/reportsdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report data failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/reportsdk/aa;->b:Lcom/inveno/reportsdk/y;

    iget-object v1, p0, Lcom/inveno/reportsdk/aa;->a:Lcom/inveno/reportsdk/x;

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/aa;->b:Lcom/inveno/reportsdk/y;

    iget-object v1, p0, Lcom/inveno/reportsdk/aa;->a:Lcom/inveno/reportsdk/x;

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/inveno/reportsdk/aa;->b:Lcom/inveno/reportsdk/y;

    iget-object v1, p0, Lcom/inveno/reportsdk/aa;->a:Lcom/inveno/reportsdk/x;

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/inveno/reportsdk/aa;->b:Lcom/inveno/reportsdk/y;

    iget-object v1, p0, Lcom/inveno/reportsdk/aa;->a:Lcom/inveno/reportsdk/x;

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/y;->b(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
