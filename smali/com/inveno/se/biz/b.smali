.class Lcom/inveno/se/biz/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/inveno/se/biz/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/biz/a;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/b;->b:Lcom/inveno/se/biz/a;

    iput-object p2, p0, Lcom/inveno/se/biz/b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/biz/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/biz/b;->b:Lcom/inveno/se/biz/a;

    iget-object v1, v1, Lcom/inveno/se/biz/a;->c:Lcom/inveno/se/biz/UiConfigBiz;

    invoke-static {v1}, Lcom/inveno/se/biz/UiConfigBiz;->access$000(Lcom/inveno/se/biz/UiConfigBiz;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/StringTools;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58RSS\u5230\u672c\u5730\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    goto :goto_0
.end method
