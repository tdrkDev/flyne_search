.class public final Lcn/com/xy/sms/sdk/util/F;
.super Ljava/lang/Thread;


# static fields
.field private static a:Z

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z


# instance fields
.field private b:Lcn/com/xy/sms/sdk/db/entity/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/util/F;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcn/com/xy/sms/sdk/db/entity/H;
    .locals 5

    const-class v2, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    sget-object v1, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/I;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lorg/w3c/dom/Document;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "Scene"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v3, v2

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v3, v0, :cond_1

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    new-instance v6, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-direct {v6}, Lcn/com/xy/sms/sdk/db/entity/z;-><init>()V

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v1, v2

    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v1, v8, :cond_3

    const-string v1, "SceneRule"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    move v1, v2

    :goto_3
    if-lt v1, v8, :cond_6

    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v14, :cond_4

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sceneId"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v8}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v10, "sceneVersion"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcn/com/xy/sms/sdk/db/entity/z;->b:Ljava/lang/String;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    new-instance v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-direct {v9}, Lcn/com/xy/sms/sdk/db/entity/SceneRule;-><init>()V

    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    move v0, v2

    :goto_5
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v0, v11, :cond_7

    invoke-virtual {v6, v9}, Lcn/com/xy/sms/sdk/db/entity/z;->a(Lcn/com/xy/sms/sdk/db/entity/SceneRule;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v14, :cond_8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-ne v13, v14, :cond_8

    const-string v13, "sceneId"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const-string v13, "sceneRuleVersion"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const-string v13, "province"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const-string v13, "id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const-string v13, "operator"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    goto :goto_6

    :cond_d
    const-string v13, "expire_date"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string v13, "fun_call"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    goto :goto_6

    :cond_f
    const-string v13, "fun_acc_url"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    goto :goto_6

    :cond_10
    const-string v13, "fun_reply_sms"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    goto/16 :goto_6

    :cond_11
    const-string v13, "fun_config"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    const-string v13, "res_urls"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    const-string v13, "s_version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    const-string v13, "scene_page_conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/G;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6
.end method

.method private a(Lcn/com/xy/sms/sdk/db/entity/H;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcn/com/xy/sms/sdk/util/F;->b(Lcn/com/xy/sms/sdk/db/entity/H;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/util/F;->b()Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/F;->a(Lcn/com/xy/sms/sdk/db/entity/H;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x7d0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/F;->b()Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/F;->a(Lcn/com/xy/sms/sdk/db/entity/H;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x7d0

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-static {}, Lcn/com/xy/sms/sdk/util/F;->b()Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/xy/sms/sdk/util/F;->a(Lcn/com/xy/sms/sdk/db/entity/H;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/util/F;->d:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/util/F;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/util/F;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/F;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/util/F;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b()Lcn/com/xy/sms/sdk/db/entity/H;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/F;->a()Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/I;->b()Lcn/com/xy/sms/sdk/db/entity/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcn/com/xy/sms/sdk/db/entity/H;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p1, Lcn/com/xy/sms/sdk/db/entity/H;->c:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->b(Ljava/io/InputStream;)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v3

    :try_start_4
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v3

    :goto_0
    :try_start_5
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, ""

    invoke-static {v4, v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/F;->a(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v3

    iget v4, p1, Lcn/com/xy/sms/sdk/db/entity/H;->f:I

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->handleSceneconfig(Ljava/util/List;I)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-wide v4

    :try_start_6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "last_load_time"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tb_xml_res_download"

    const-string v5, "id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lcn/com/xy/sms/sdk/db/entity/H;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v3, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_2
    if-eqz v2, :cond_0

    :try_start_7
    iget-wide v2, p1, Lcn/com/xy/sms/sdk/db/entity/H;->a:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/db/entity/I;->a(JI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    move v2, v3

    :goto_4
    if-eqz v2, :cond_3

    :try_start_9
    iget-wide v2, p1, Lcn/com/xy/sms/sdk/db/entity/H;->a:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/db/entity/I;->a(JI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v3, :cond_5

    :try_start_b
    iget-wide v4, p1, Lcn/com/xy/sms/sdk/db/entity/H;->a:J

    const/4 v3, 0x1

    invoke-static {v4, v5, v3}, Lcn/com/xy/sms/sdk/db/entity/I;->a(JI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_5
    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    :goto_6
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v12, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_4
    move-exception v3

    move-object v12, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catch_5
    move-exception v2

    move v2, v3

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/F;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Z)V
    .locals 2

    const-class v0, Lcn/com/xy/sms/sdk/util/F;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcn/com/xy/sms/sdk/util/F;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/util/F;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/F;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/F;->b()Lcn/com/xy/sms/sdk/db/entity/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/F;->a(Lcn/com/xy/sms/sdk/db/entity/H;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/F;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
