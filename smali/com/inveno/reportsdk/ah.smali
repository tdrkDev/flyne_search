.class Lcom/inveno/reportsdk/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inveno/reportsdk/q;

.field final synthetic c:Lcom/inveno/reportsdk/ag;


# direct methods
.method constructor <init>(Lcom/inveno/reportsdk/ag;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/ah;->c:Lcom/inveno/reportsdk/ag;

    iput-object p2, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/reportsdk/ah;->b:Lcom/inveno/reportsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->b:Lcom/inveno/reportsdk/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->b:Lcom/inveno/reportsdk/q;

    invoke-interface {v0, p1}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "DataSDK"

    iget-object v1, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->b:Lcom/inveno/reportsdk/q;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->reset()V

    :cond_2
    const-string v0, "t_expire_c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "t_expire_c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/XZSDKManager;->setExpireDuration(J)V

    const-string v0, "t_expire_c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v0, "upack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "upack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/reportsdk/XZSDKManager;->setUpack(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->c:Lcom/inveno/reportsdk/ag;

    invoke-static {v0}, Lcom/inveno/reportsdk/ag;->a(Lcom/inveno/reportsdk/ag;)Lcom/inveno/reportsdk/p;

    move-result-object v0

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->c:Lcom/inveno/reportsdk/ag;

    invoke-static {v0}, Lcom/inveno/reportsdk/ag;->a(Lcom/inveno/reportsdk/ag;)Lcom/inveno/reportsdk/p;

    move-result-object v0

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->c:Lcom/inveno/reportsdk/ag;

    invoke-static {v0}, Lcom/inveno/reportsdk/ag;->a(Lcom/inveno/reportsdk/ag;)Lcom/inveno/reportsdk/p;

    move-result-object v0

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->c:Lcom/inveno/reportsdk/ag;

    invoke-static {v0}, Lcom/inveno/reportsdk/ag;->a(Lcom/inveno/reportsdk/ag;)Lcom/inveno/reportsdk/p;

    move-result-object v0

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/inveno/reportsdk/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "server_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "server_time"

    const-string v4, "server_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    const-string v0, "put flownewsinfo server time error!!"

    invoke-virtual {p0, v0}, Lcom/inveno/reportsdk/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/inveno/reportsdk/ah;->b:Lcom/inveno/reportsdk/q;

    invoke-interface {v0, p1}, Lcom/inveno/reportsdk/q;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/reportsdk/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
