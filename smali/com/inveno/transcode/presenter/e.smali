.class Lcom/inveno/transcode/presenter/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inveno/transcode/presenter/d;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/presenter/d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 58
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v1}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/d;)Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v1}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/d;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/transcode/view/TranscodeParams;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    monitor-exit v3

    .line 192
    :goto_0
    return-void

    .line 62
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 64
    :try_start_3
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 66
    :cond_2
    const-string v3, ""

    move-object v9, v3

    .line 68
    :goto_1
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 70
    :cond_3
    const-string v3, ""

    move-object v8, v3

    .line 72
    :goto_2
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 74
    :cond_4
    const-string v3, ""

    move-object v7, v3

    .line 77
    :goto_3
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-virtual {v1}, Lcom/inveno/transcode/view/TranscodeParams;->getOriginalurl()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 82
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v1

    invoke-static {v2}, Lcom/inveno/transcode/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/transcode/presenter/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v3}, Lcom/inveno/transcode/presenter/d;->b(Lcom/inveno/transcode/presenter/d;)Lcom/inveno/transcode/presenter/c;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v2, v19

    .line 181
    :goto_4
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v2}, Lcom/inveno/transcode/presenter/d;->b(Lcom/inveno/transcode/presenter/d;)Lcom/inveno/transcode/presenter/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    :catch_1
    move-exception v1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v2, v19

    goto :goto_4

    .line 91
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/inveno/transcode/a/b;->a()Lcom/inveno/transcode/a/b;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/inveno/transcode/a/b;->a(Ljava/lang/String;)Lcom/inveno/transcode/a/a;

    move-result-object v12

    .line 93
    if-eqz v12, :cond_f

    .line 94
    invoke-static {v10}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/jsoup/Connection;->validateTLSCertificates(Z)Lorg/jsoup/Connection;

    move-result-object v1

    const/16 v3, 0x1770

    invoke-interface {v1, v3}, Lorg/jsoup/Connection;->timeout(I)Lorg/jsoup/Connection;

    move-result-object v1

    .line 95
    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    invoke-interface {v1, v3, v4}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 97
    invoke-interface {v1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v13

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->e()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 105
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->e()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {v13, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 110
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1e

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 111
    :cond_8
    const/4 v1, 0x0

    .line 112
    goto :goto_6

    .line 120
    :cond_9
    if-eqz v1, :cond_c

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    const-string v15, "p"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "align"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v1, v15, v0}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/d;Lorg/jsoup/select/Elements;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    const-string v15, "a"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "href"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "target"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v1, v15, v0}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/d;Lorg/jsoup/select/Elements;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v14, v1, v10}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/d;Lorg/jsoup/select/Elements;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v14, "<article"

    const-string v15, "<div"

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "</article>"

    const-string v15, "</div>"

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v14, "&nbsp;"

    const-string v15, ""

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 138
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 139
    invoke-virtual {v12, v10}, Lcom/inveno/transcode/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->g()Ljava/lang/String;

    move-result-object v1

    move-object v6, v5

    move-object v5, v1

    .line 153
    :cond_a
    :goto_7
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 154
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 157
    :cond_b
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 158
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 161
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v12, "mTitle"

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v9, "mSource"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v8, "mTime"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v7, "mUrl"

    invoke-virtual {v3, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v7, "mOrigUrl"

    invoke-virtual {v3, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v7, "mIcon"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v6, "mIcon_href"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v5, "mIcon_background"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v4, "mContent"

    invoke-virtual {v3, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v4, "mAd"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v3}, Lcom/inveno/transcode/presenter/d;->b(Lcom/inveno/transcode/presenter/d;)Lcom/inveno/transcode/presenter/c;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v3

    invoke-static {v2}, Lcom/inveno/transcode/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/inveno/transcode/presenter/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 184
    :catch_2
    move-exception v1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v2, v19

    .line 185
    :goto_9
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 133
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/transcode/presenter/e;->a:Lcom/inveno/transcode/presenter/d;

    invoke-static {v1}, Lcom/inveno/transcode/presenter/d;->b(Lcom/inveno/transcode/presenter/d;)Lcom/inveno/transcode/presenter/c;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_d
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 144
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_e
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 148
    invoke-virtual {v12}, Lcom/inveno/transcode/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_7

    :cond_f
    move-object v1, v2

    .line 188
    goto/16 :goto_5

    .line 184
    :catch_3
    move-exception v1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v2, v19

    goto :goto_9

    :cond_10
    move-object v1, v3

    goto/16 :goto_8

    :cond_11
    move-object v7, v3

    goto/16 :goto_3

    :cond_12
    move-object v8, v3

    goto/16 :goto_2

    :cond_13
    move-object v9, v3

    goto/16 :goto_1
.end method
