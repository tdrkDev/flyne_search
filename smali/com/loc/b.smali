.class public final Lcom/loc/b;
.super Lcom/loc/e;
.source "SourceFile"


# static fields
.field private static b:Z


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/b;->b:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/e;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/b;->c:[Ljava/lang/String;

    iput v1, p0, Lcom/loc/b;->d:I

    iput-boolean v1, p0, Lcom/loc/b;->e:Z

    iput v1, p0, Lcom/loc/b;->f:I

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget v0, p0, Lcom/loc/b;->d:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/loc/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/loc/b;->d:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/loc/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "getLogInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v6, 0xfa000

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v3, "/data/anr/traces.txt"

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/loc/af;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_16

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_18

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    if-le v0, v6, :cond_3

    sub-int/2addr v0, v6

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_3
    new-instance v2, Lcom/loc/af;

    sget-object v0, Lcom/loc/ai;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/loc/af;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v5

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "pid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_4
    const-string v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    :goto_5
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lcom/loc/af;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1a

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_7
    :goto_8
    iget-boolean v0, p0, Lcom/loc/b;->e:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/loc/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_d

    :try_start_8
    iget v0, p0, Lcom/loc/b;->d:I

    const/16 v6, 0x9

    if-le v0, v6, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/b;->d:I

    :cond_9
    iget-object v0, p0, Lcom/loc/b;->c:[Ljava/lang/String;

    iget v6, p0, Lcom/loc/b;->d:I

    aput-object v4, v0, v6

    iget v0, p0, Lcom/loc/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/b;->d:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_20
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_9
    :try_start_9
    iget v0, p0, Lcom/loc/b;->f:I

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5

    iget-boolean v0, p0, Lcom/loc/b;->e:Z

    if-nez v0, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cy;

    invoke-virtual {v0}, Lcom/loc/cy;->f()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/loc/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/loc/b;->e:Z

    iget-boolean v7, p0, Lcom/loc/b;->e:Z

    if-eqz v7, :cond_a

    invoke-virtual {p0, v0}, Lcom/loc/b;->a(Lcom/loc/cy;)V

    move v4, v5

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v6, "ANRWriter"

    const-string v7, "addData"

    invoke-static {v0, v6, v7}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_b
    move v4, v5

    goto/16 :goto_3

    :cond_c
    iget v0, p0, Lcom/loc/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/b;->f:I
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_22
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1e
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_d
    move v4, v5

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a
    :try_start_a
    const-string v4, "ANRWriter"

    const-string v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_e

    :try_start_b
    invoke-virtual {v2}, Lcom/loc/af;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_10

    :cond_e
    :goto_b
    if-eqz v3, :cond_7

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_8

    :catch_3
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    :goto_c
    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_d
    :try_start_d
    const-string v4, "ANRWriter"

    const-string v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v2, :cond_f

    :try_start_e
    invoke-virtual {v2}, Lcom/loc/af;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_13

    :cond_f
    :goto_e
    if-eqz v3, :cond_7

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_8

    :catch_5
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_f
    if-eqz v2, :cond_10

    :try_start_10
    invoke-virtual {v2}, Lcom/loc/af;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c

    :cond_10
    :goto_10
    if-eqz v3, :cond_11

    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e

    :cond_11
    :goto_11
    throw v0

    :cond_12
    move-object v0, v1

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_12
    if-eqz v0, :cond_13

    :try_start_12
    invoke-virtual {v0}, Lcom/loc/af;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    :cond_13
    :goto_13
    if-eqz v2, :cond_7

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_8

    :catch_7
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto :goto_c

    :catch_8
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v3, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_9
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v3, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    :goto_14
    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_b
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_c
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v1, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_d
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v1, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_e
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v1, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_f
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_10
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_11
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto :goto_14

    :catch_12
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_13
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_14
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto :goto_14

    :catch_15
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v2, v3, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_16
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v2, v3, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_17
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_18
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_19
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1a
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1b
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto/16 :goto_c

    :catch_1c
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :catch_1d
    move-exception v0

    move-object v2, v1

    goto/16 :goto_d

    :catch_1e
    move-exception v0

    goto/16 :goto_d

    :catch_1f
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :catch_20
    move-exception v0

    goto/16 :goto_a

    :catch_21
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_12

    :catch_22
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_12

    :cond_14
    move v5, v4

    move-object v4, v0

    goto/16 :goto_5
.end method

.method protected final a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/loc/ct;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/loc/b;->b:Z

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/loc/b;->b:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/loc/o;

    invoke-direct {v3, p1}, Lcom/loc/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/loc/o;->a()Lcom/loc/p;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lcom/loc/p;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/loc/p;->c(Z)V

    invoke-virtual {v3, v4}, Lcom/loc/o;->a(Lcom/loc/p;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
