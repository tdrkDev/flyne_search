.class public Lcom/inveno/transcode/presenter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/presenter/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/inveno/transcode/presenter/a;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 112
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b()Lcom/inveno/transcode/presenter/f;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/inveno/transcode/presenter/f$a;->a()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 138
    iget-object v1, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    if-eqz v1, :cond_1

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    invoke-virtual {v1, p1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/lang/String;)Lcom/inveno/transcode/presenter/a$c;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inveno/transcode/presenter/a$c;->a(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 144
    if-eqz v2, :cond_0

    .line 145
    :try_start_1
    invoke-direct {p0, v2}, Lcom/inveno/transcode/presenter/f;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 152
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/inveno/transcode/presenter/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 149
    :goto_2
    :try_start_3
    const-string v3, "transcode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValueFromDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    if-eqz v2, :cond_1

    .line 153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v1

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 152
    :goto_3
    if-eqz v2, :cond_2

    .line 153
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 155
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 151
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 148
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/f;->a:Landroid/util/LruCache;

    .line 40
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ZI)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v0, 0x600000

    .line 67
    iput-boolean p2, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    .line 68
    iget-boolean v1, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-gtz p3, :cond_3

    .line 74
    const/high16 p3, 0x200000

    .line 79
    :cond_2
    :goto_1
    new-instance v0, Lcom/inveno/transcode/presenter/g;

    invoke-direct {v0, p0, p3}, Lcom/inveno/transcode/presenter/g;-><init>(Lcom/inveno/transcode/presenter/f;I)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/f;->a:Landroid/util/LruCache;

    .line 92
    :try_start_0
    const-string v0, "transform_cache"

    invoke-direct {p0, p1, v0}, Lcom/inveno/transcode/presenter/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v1, v2, v4, v5}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/File;IIJ)Lcom/inveno/transcode/presenter/a;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iput-object v3, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "transcode"

    const-string v1, "init disk cache fail--1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_3
    if-le p3, v0, :cond_2

    move p3, v0

    .line 76
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    iput-object v3, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "transcode"

    const-string v1, "init disk cache fail--2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    invoke-virtual {v2, p1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/lang/String;)Lcom/inveno/transcode/presenter/a$c;

    move-result-object v2

    .line 186
    if-nez v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/inveno/transcode/presenter/f;->b:Lcom/inveno/transcode/presenter/a;

    invoke-virtual {v2, p1}, Lcom/inveno/transcode/presenter/a;->b(Ljava/lang/String;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inveno/transcode/presenter/a$a;->a(I)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 190
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-virtual {v2}, Lcom/inveno/transcode/presenter/a$a;->a()V

    .line 192
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0

    .line 195
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/inveno/transcode/presenter/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 197
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 198
    :goto_2
    :try_start_4
    const-string v2, "transcode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStringToCache --1-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 203
    if-eqz v1, :cond_0

    .line 204
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 206
    :catch_2
    move-exception v0

    goto :goto_0

    .line 199
    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 200
    :goto_3
    :try_start_6
    const-string v2, "transcode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStringToCache --2-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 203
    if-eqz v1, :cond_0

    .line 204
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 206
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 203
    :goto_4
    if-eqz v1, :cond_4

    .line 204
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 206
    :cond_4
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    goto :goto_5

    .line 202
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 199
    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 197
    :catch_7
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/inveno/transcode/presenter/f;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/inveno/transcode/presenter/f;->c:Z

    return v0
.end method
