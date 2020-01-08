.class Lcom/inveno/reportsdk/l$i;
.super Lcom/inveno/reportsdk/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/inveno/reportsdk/l$b;-><init>(IJLjava/lang/String;)V

    iput-wide p2, p0, Lcom/inveno/reportsdk/l$i;->d:J

    iput-wide p4, p0, Lcom/inveno/reportsdk/l$i;->e:J

    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event_id"

    iget v2, p0, Lcom/inveno/reportsdk/l$i;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event_time"

    invoke-virtual {p0}, Lcom/inveno/reportsdk/l$i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scenario"

    iget-object v2, p0, Lcom/inveno/reportsdk/l$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dwelltime"

    iget-wide v2, p0, Lcom/inveno/reportsdk/l$i;->e:J

    iget-wide v4, p0, Lcom/inveno/reportsdk/l$i;->d:J

    invoke-static {v2, v3, v4, v5}, Lcom/inveno/reportsdk/l$i;->a(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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
