.class Lcom/inveno/reportsdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inveno/reportsdk/e;


# direct methods
.method constructor <init>(Lcom/inveno/reportsdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/f;->a:Lcom/inveno/reportsdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/reportsdk/f;->a:Lcom/inveno/reportsdk/e;

    invoke-static {v0}, Lcom/inveno/reportsdk/e;->a(Lcom/inveno/reportsdk/e;)Lcom/inveno/reportsdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/f;->a:Lcom/inveno/reportsdk/e;

    invoke-static {v0}, Lcom/inveno/reportsdk/e;->a(Lcom/inveno/reportsdk/e;)Lcom/inveno/reportsdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/g;->close()V

    const-string v0, "DataSDK"

    const-string v1, "\u6570\u636e\u5e93\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
