.class Lcom/inveno/se/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic b:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/o;->b:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/o;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/o;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, p1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/o;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-static {p1}, Lcom/inveno/se/model/ZZNewsDetail;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNewsDetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inveno/se/o;->a:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/o;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
