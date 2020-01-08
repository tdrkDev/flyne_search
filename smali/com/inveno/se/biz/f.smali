.class Lcom/inveno/se/biz/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inveno/se/biz/UidBiz;


# direct methods
.method constructor <init>(Lcom/inveno/se/biz/UidBiz;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    iput-object p2, p0, Lcom/inveno/se/biz/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/callback/UidLisener;

    invoke-interface {v0}, Lcom/inveno/se/callback/UidLisener;->uidFail()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0, v2}, Lcom/inveno/se/biz/UidBiz;->access$402(Lcom/inveno/se/biz/UidBiz;Z)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230uid\u4e86\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/config/Result;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/config/Result;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0}, Lcom/inveno/se/config/Result;->getCode()I

    move-result v3

    if-ne v1, v3, :cond_4

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/biz/UidBiz;->access$002(Lcom/inveno/se/biz/UidBiz;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/biz/f;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/StringTools;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v1}, Lcom/inveno/se/biz/UidBiz;->access$000(Lcom/inveno/se/biz/UidBiz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/biz/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/model/MustParam;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/biz/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v1}, Lcom/inveno/se/biz/UidBiz;->access$000(Lcom/inveno/se/biz/UidBiz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/callback/UidLisener;

    invoke-interface {v0}, Lcom/inveno/se/callback/UidLisener;->uidSucces()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u4fdd\u5b58uid\u5230\u672c\u5730\u5931\u8d25"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790UIDjson\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/tools/URLUtils;->change()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/biz/f;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0, v2}, Lcom/inveno/se/biz/UidBiz;->access$402(Lcom/inveno/se/biz/UidBiz;Z)Z

    :goto_2
    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0, v2}, Lcom/inveno/se/biz/UidBiz;->access$402(Lcom/inveno/se/biz/UidBiz;Z)Z

    goto :goto_2

    :cond_4
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid\u83b7\u53d6\u5f02\u5e38\uff0c\u670d\u52a1\u5668\u8fd4\u56de\u7801\u4e3a\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/se/config/Result;->getCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$200(Lcom/inveno/se/biz/UidBiz;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$208(Lcom/inveno/se/biz/UidBiz;)I

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/biz/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/inveno/se/biz/UidBiz;->access$300(Lcom/inveno/se/biz/UidBiz;Landroid/content/Context;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/inveno/se/tools/URLUtils;->change()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/biz/f;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0, v2}, Lcom/inveno/se/biz/UidBiz;->access$402(Lcom/inveno/se/biz/UidBiz;Z)Z

    goto :goto_2

    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_6

    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/callback/UidLisener;

    invoke-interface {v0}, Lcom/inveno/se/callback/UidLisener;->uidFail()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inveno/se/biz/f;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-static {v1, v2}, Lcom/inveno/se/biz/UidBiz;->access$402(Lcom/inveno/se/biz/UidBiz;Z)Z

    throw v0
.end method
