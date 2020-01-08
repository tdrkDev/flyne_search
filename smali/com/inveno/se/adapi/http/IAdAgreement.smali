.class public interface abstract Lcom/inveno/se/adapi/http/IAdAgreement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<[B>;)V"
        }
    .end annotation
.end method

.method public abstract upLoadEvent(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
.end method
