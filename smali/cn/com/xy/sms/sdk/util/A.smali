.class final Lcn/com/xy/sms/sdk/util/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:I

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/List;IZ)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    iput p2, p0, Lcn/com/xy/sms/sdk/util/A;->b:I

    iput-boolean p3, p0, Lcn/com/xy/sms/sdk/util/A;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 8

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/List;)I

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v2, p0, Lcn/com/xy/sms/sdk/util/A;->b:I

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/util/A;->c:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/Set;)V

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->b(Ljava/util/List;)V

    :cond_4
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/i;->e(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/List;)I

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/B;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scene_id IN("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") AND sceneType"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "tb_scene_config"

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCheck"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v2, v3, v4, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v0, "sceneconfigList"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v2, p0, Lcn/com/xy/sms/sdk/util/A;->b:I

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->handleSceneconfig(Ljava/util/List;I)V

    const-string v0, "sceneUrllist"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    iget v2, p0, Lcn/com/xy/sms/sdk/util/A;->b:I

    invoke-static {v1, v0, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->handleSceneUrllist(Ljava/util/List;Ljava/util/ArrayList;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/List;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/List;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/A;->a:Ljava/util/List;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/util/List;)I

    throw v0
.end method
