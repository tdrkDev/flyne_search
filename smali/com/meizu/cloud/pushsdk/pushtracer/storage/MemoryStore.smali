.class public Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryStore"


# instance fields
.field private atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

.field private dataKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sendLimit:I

.field private storeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    .line 27
    iput p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->sendLimit:I

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->insertEvent(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)J

    .line 33
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method

.method public getEmittableEvents()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 67
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    .line 72
    iget v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->sendLimit:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->sendLimit:I

    move v2, v0

    :goto_0
    move v3, v4

    .line 73
    :goto_1
    if-ge v3, v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    new-instance v7, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    invoke-direct {v7}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/EventStore;->deserializer([B)Ljava/util/Map;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/util/Map;

    .line 79
    invoke-virtual {v7, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->addMap(Ljava/util/Map;)V

    .line 80
    const-string v0, "MemoryStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " current key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " payload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 82
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v2, v0

    .line 72
    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;

    invoke-direct {v0, v6, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public getEvent(J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/EventStore;->deserializer([B)Ljava/util/Map;

    move-result-object v0

    .line 122
    check-cast v0, Ljava/util/Map;

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public insertEvent(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)J
    .locals 5

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/EventStore;->serialize(Ljava/util/Map;)[B

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 104
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-wide v2
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllEvents()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public removeEvent(J)Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->dataKeyList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;->storeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
