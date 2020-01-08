.class public Lcom/inveno/reportsdk/l$a;
.super Lcom/inveno/reportsdk/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field final f:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    const/4 v0, 0x7

    invoke-direct {p0, v0, p4, p5}, Lcom/inveno/reportsdk/l;-><init>(IJ)V

    iput-object p1, p0, Lcom/inveno/reportsdk/l$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/inveno/reportsdk/l$a;->d:Ljava/lang/String;

    iput p3, p0, Lcom/inveno/reportsdk/l$a;->e:I

    iput-wide p4, p0, Lcom/inveno/reportsdk/l$a;->f:J

    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event_id"

    iget v2, p0, Lcom/inveno/reportsdk/l$a;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event_time"

    invoke-virtual {p0}, Lcom/inveno/reportsdk/l$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action_name"

    iget-object v2, p0, Lcom/inveno/reportsdk/l$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action_value"

    iget-object v2, p0, Lcom/inveno/reportsdk/l$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action_type"

    iget v2, p0, Lcom/inveno/reportsdk/l$a;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
