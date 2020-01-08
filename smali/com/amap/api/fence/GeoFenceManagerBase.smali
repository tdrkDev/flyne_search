.class public interface abstract Lcom/amap/api/fence/GeoFenceManagerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addDistrictGeoFence(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addKeywordGeoFence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract addNearbyGeoFence(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/DPoint;FILjava/lang/String;)V
.end method

.method public abstract addPolygonGeoFence(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addRoundGeoFence(Lcom/amap/api/location/DPoint;FLjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;)V
.end method

.method public abstract createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
.end method

.method public abstract getAllGeoFence()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeGeoFence()V
.end method

.method public abstract removeGeoFence(Lcom/amap/api/fence/GeoFence;)Z
.end method

.method public abstract setActivateAction(I)V
.end method

.method public abstract setGeoFenceListener(Lcom/amap/api/fence/GeoFenceListener;)V
.end method
