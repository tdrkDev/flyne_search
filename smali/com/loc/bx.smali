.class public final Lcom/loc/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static K:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bh;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/be;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:[B

.field public L:Ljava/lang/String;

.field private M:[B

.field private N:I

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bx;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/loc/bx;->a:Ljava/lang/String;

    iput-short v2, p0, Lcom/loc/bx;->b:S

    iput-object v1, p0, Lcom/loc/bx;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->y:Ljava/lang/String;

    iput v2, p0, Lcom/loc/bx;->z:I

    iput-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->B:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/bx;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->G:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/bx;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bx;->J:[B

    iput-object v1, p0, Lcom/loc/bx;->M:[B

    iput v2, p0, Lcom/loc/bx;->N:I

    iput-object v1, p0, Lcom/loc/bx;->L:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/loc/bx;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v2, 0x0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [B

    if-eqz v0, :cond_0

    :try_start_0
    array-length v3, v0

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_2
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Req"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacBa "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/bx;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/bx;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/loc/bi;Lcom/loc/bl;Landroid/net/ConnectivityManager;Lcom/loc/bf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    const-string v8, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "0"

    const-string v13, "0"

    invoke-static/range {p1 .. p1}, Lcom/loc/cq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/loc/ci;->f()I

    move-result v15

    const-string v6, ""

    const-string v5, ""

    const-string v7, ""

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/loc/bx;->L:Ljava/lang/String;

    const-string v3, "api_serverSDK_130905"

    const-string v2, "S128DF1572465B890OE3F7A13167KLEI"

    if-nez p3, :cond_15

    const-string v3, "UC_nlp_20131029"

    const-string v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v4, v3

    move-object v3, v2

    :goto_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/loc/bi;->d()I

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/loc/bi;->e()I

    move-result v19

    invoke-virtual/range {p4 .. p4}, Lcom/loc/bi;->f()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-static {}, Lcom/loc/bi;->a()Ljava/util/ArrayList;

    move-result-object v21

    invoke-static {}, Lcom/loc/bi;->b()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->b()Ljava/util/ArrayList;

    move-result-object v23

    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_14

    const-string v2, "1"

    move-object v9, v2

    :goto_1
    if-eqz v20, :cond_3

    sget-object v2, Lcom/loc/bz;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/loc/ct;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/bz;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    sget-object v2, Lcom/loc/bz;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/bz;->c:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/loc/bz;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/bz;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    sget-object v2, Lcom/loc/bz;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/bz;->d:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_4
    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/loc/bl;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v25

    invoke-static {v2}, Lcom/loc/ci;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/loc/ci;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    if-eqz v25, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "2"

    move-object v6, v5

    move-object v5, v2

    :cond_4
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v19, :pswitch_data_0

    move-object v2, v7

    :goto_6
    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v8, v2

    :goto_7
    and-int/lit8 v2, v18, 0x4

    const/4 v7, 0x4

    if-ne v2, v7, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->C:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v25, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v7, -0x80

    if-ge v2, v7, :cond_10

    const/4 v2, 0x0

    :cond_5
    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x20

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v7, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_a
    const/16 v19, 0x20

    move/from16 v0, v19

    if-lt v7, v0, :cond_6

    const-string v2, "unkwn"

    :cond_6
    const-string v7, "*"

    const-string v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_b
    if-nez p2, :cond_12

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/loc/bx;->b:S

    :goto_c
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/loc/bx;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/loc/bx;->d:Ljava/lang/String;

    invoke-static {}, Lcom/loc/ci;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/ci;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/loc/ci;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/loc/bx;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/loc/bx;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/loc/bx;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/loc/bx;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/loc/bx;->o:Ljava/lang/String;

    sget-object v2, Lcom/loc/bz;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->p:Ljava/lang/String;

    sget-object v2, Lcom/loc/bz;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->q:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->s:Ljava/lang/String;

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/loc/bx;->t:Ljava/lang/String;

    const-string v2, "3.4.0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->v:Ljava/lang/String;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/loc/bx;->w:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/bx;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/loc/bx;->z:I

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/loc/bx;->A:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/loc/bi;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->D:Ljava/lang/String;

    invoke-static {}, Lcom/loc/bl;->k()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->H:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->E:Ljava/lang/String;

    if-eqz p7, :cond_9

    invoke-virtual/range {p7 .. p7}, Lcom/loc/bf;->c()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->G:Ljava/util/ArrayList;

    :cond_9
    :try_start_4
    sget-object v2, Lcom/loc/bx;->K:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/loc/ct;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/bx;->K:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_d
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception v2

    const-string v8, "APS"

    const-string v24, "getApsReq part4"

    move-object/from16 v0, v24

    invoke-static {v2, v8, v0}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string v8, "APS"

    const-string v24, "getApsReq part2"

    move-object/from16 v0, v24

    invoke-static {v2, v8, v0}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_2
    move-exception v8

    const-string v24, "APS"

    const-string v25, "getApsReq part"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v2, "1"

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_5

    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bh;

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<mnc>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<cellid>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "</cellid>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<signal>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/bh;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_e
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_d

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bh;

    iget v0, v2, Lcom/loc/bh;->c:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v26, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/bh;->d:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v26, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/bh;->j:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_c

    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_e

    :cond_d
    move-object v2, v8

    goto/16 :goto_6

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bh;

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<sid>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<nid>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<bid>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/loc/bh;->f:I

    if-lez v7, :cond_e

    iget v7, v2, Lcom/loc/bh;->e:I

    if-lez v7, :cond_e

    const-string v7, "<lon>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lat>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bh;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v7, "<signal>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/bh;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_8

    :cond_10
    const/16 v7, 0x7f

    if-le v2, v7, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_11
    invoke-virtual/range {p5 .. p5}, Lcom/loc/bl;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_b

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/loc/bx;->b:S

    goto/16 :goto_c

    :catch_3
    move-exception v2

    goto/16 :goto_d

    :catch_4
    move-exception v19

    goto/16 :goto_a

    :cond_13
    move-object v8, v7

    goto/16 :goto_7

    :cond_14
    move-object v9, v8

    goto/16 :goto_1

    :cond_15
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()[B
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->a:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->c:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->d:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->e:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->f:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->g:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->h:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->i:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->l:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->m:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->n:Ljava/lang/String;

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->o:Ljava/lang/String;

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->p:Ljava/lang/String;

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->q:Ljava/lang/String;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->r:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->s:Ljava/lang/String;

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->t:Ljava/lang/String;

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->u:Ljava/lang/String;

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->v:Ljava/lang/String;

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->w:Ljava/lang/String;

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->x:Ljava/lang/String;

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    :cond_17
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/loc/bx;->z:I

    invoke-static {v2}, Lcom/loc/bi;->a(I)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/loc/bx;->z:I

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->A:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->A:Ljava/lang/String;

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->B:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->B:Ljava/lang/String;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->E:Ljava/lang/String;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->H:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->H:Ljava/lang/String;

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->I:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->I:Ljava/lang/String;

    :cond_1d
    sget-object v2, Lcom/loc/bx;->K:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, ""

    sput-object v2, Lcom/loc/bx;->K:Ljava/lang/String;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->J:[B

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->J:[B

    :cond_1f
    const/4 v2, 0x2

    new-array v10, v2, [B

    const/4 v2, 0x4

    new-array v8, v2, [B

    const/16 v2, 0x1000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bx;->J:[B

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->J:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0x1000

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bx;->M:[B

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/loc/bx;->N:I

    if-le v2, v3, :cond_2b

    :cond_21
    new-array v3, v2, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/loc/bx;->M:[B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/loc/bx;->N:I

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/loc/bx;->b:S

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/lit8 v4, v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->c:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v2

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->d:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v4, v2

    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->o:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v4, v2

    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->e:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v4, v2

    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->f:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v4, v2

    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->g:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v4, v2

    :goto_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->u:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v4, v2

    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->h:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v4, v2

    :goto_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->p:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v4, v2

    :goto_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->q:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v4, v2

    :goto_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    aput-byte v2, v3, v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    add-int/lit8 v4, v4, 0x1

    :goto_e
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->v:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v4, v2

    :goto_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->w:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v4, v2

    :goto_10
    :try_start_d
    sget-object v2, Lcom/loc/bx;->K:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    aput-byte v2, v3, v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    add-int/lit8 v4, v4, 0x1

    :goto_11
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->x:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    add-int/2addr v2, v4

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/loc/bx;->z:I

    and-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/loc/bx;->z:I

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    const-string v4, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lac"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "cellid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->f(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v4, v2

    const-string v2, "signal"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x7f

    if-le v2, v5, :cond_2e

    const/4 v2, 0x0

    :cond_22
    :goto_13
    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->B:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2f

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_23
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->D:Ljava/lang/String;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Lcom/loc/bx;->z:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_35

    :try_start_f
    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x3c

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-byte v6, v5

    aput-byte v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    add-int/2addr v2, v5

    move v4, v2

    :goto_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/bx;->C:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/loc/bx;->z:I

    and-int/lit8 v2, v2, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3b

    if-lez v5, :cond_3b

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bh;

    iget-boolean v2, v2, Lcom/loc/bh;->o:Z

    if-nez v2, :cond_24

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    :cond_24
    int-to-byte v2, v5

    aput-byte v2, v3, v4

    add-int/lit8 v6, v4, 0x1

    const/4 v2, 0x0

    move v7, v2

    :goto_16
    if-ge v7, v5, :cond_3c

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bh;

    iget-boolean v4, v2, Lcom/loc/bh;->o:Z

    if-eqz v4, :cond_53

    iget v4, v2, Lcom/loc/bh;->k:I

    const/4 v11, 0x1

    if-eq v4, v11, :cond_25

    iget v4, v2, Lcom/loc/bh;->k:I

    const/4 v11, 0x3

    if-eq v4, v11, :cond_25

    iget v4, v2, Lcom/loc/bh;->k:I

    const/4 v11, 0x4

    if-ne v4, v11, :cond_37

    :cond_25
    iget v4, v2, Lcom/loc/bh;->k:I

    int-to-byte v4, v4

    iget-boolean v11, v2, Lcom/loc/bh;->n:Z

    if-eqz v11, :cond_26

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    :cond_26
    aput-byte v4, v3, v6

    add-int/lit8 v4, v6, 0x1

    iget v6, v2, Lcom/loc/bh;->a:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->b:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->c:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->d:I

    invoke-static {v6, v8}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v6, v4

    iget v4, v2, Lcom/loc/bh;->j:I

    const/16 v11, 0x7f

    if-le v4, v11, :cond_36

    const/16 v4, 0x63

    :cond_27
    :goto_17
    int-to-byte v4, v4

    aput-byte v4, v3, v6

    add-int/lit8 v4, v6, 0x1

    iget-short v2, v2, Lcom/loc/bh;->l:S

    invoke-static {v2, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v11, v2

    invoke-static {v2, v6, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v4

    :goto_18
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v2

    goto :goto_16

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bx;->y:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->M:[B

    move-object v3, v2

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot2"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot21"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :catch_2
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot22"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :catch_3
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot23"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :catch_4
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot24"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :catch_5
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot25"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :catch_6
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot26"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :catch_7
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot27"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :catch_8
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot28"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :catch_9
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot29"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_2c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bx;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    add-int/2addr v4, v2

    goto/16 :goto_e

    :catch_a
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot219"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :catch_b
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot211"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :catch_c
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot212"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_2d
    :try_start_11
    sget-object v2, Lcom/loc/bx;->K:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d

    add-int/2addr v4, v2

    goto/16 :goto_11

    :catch_d
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot212"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :catch_e
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot213"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_12

    :cond_2e
    const/16 v5, -0x80

    if-ge v2, v5, :cond_22

    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->B:Ljava/lang/String;

    const-string v5, "\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    int-to-byte v4, v6

    aput-byte v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v4

    move/from16 v4, v18

    :goto_19
    if-ge v4, v6, :cond_23

    const-string v5, "lac"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/loc/bx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    const-string v5, "cellid"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/loc/bx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/ci;->f(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v5, v2

    const-string v2, "signal"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/loc/bx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v7, 0x7f

    if-le v2, v7, :cond_31

    const/4 v2, 0x0

    :cond_30
    :goto_1a
    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_19

    :cond_31
    const/16 v7, -0x80

    if-ge v2, v7, :cond_30

    const/4 v2, 0x0

    goto :goto_1a

    :cond_32
    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    const-string v4, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "sid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "nid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "bid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->e(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lon"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->f(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lat"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ci;->f(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v4, v2

    const-string v2, "signal"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x7f

    if-le v2, v5, :cond_34

    const/4 v2, 0x0

    :cond_33
    :goto_1b
    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_34
    const/16 v5, -0x80

    if-ge v2, v5, :cond_33

    const/4 v2, 0x0

    goto :goto_1b

    :catch_f
    move-exception v4

    :cond_35
    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    goto/16 :goto_15

    :cond_36
    const/16 v11, -0x80

    if-ge v4, v11, :cond_27

    const/16 v4, 0x63

    goto/16 :goto_17

    :cond_37
    iget v4, v2, Lcom/loc/bh;->k:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_53

    iget v4, v2, Lcom/loc/bh;->k:I

    int-to-byte v4, v4

    iget-boolean v11, v2, Lcom/loc/bh;->n:Z

    if-eqz v11, :cond_38

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    :cond_38
    aput-byte v4, v3, v6

    add-int/lit8 v4, v6, 0x1

    iget v6, v2, Lcom/loc/bh;->a:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->g:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->h:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->i:I

    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->f:I

    invoke-static {v6, v8}, Lcom/loc/ci;->b(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/bh;->e:I

    invoke-static {v6, v8}, Lcom/loc/ci;->b(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v6, v4

    iget v4, v2, Lcom/loc/bh;->j:I

    const/16 v11, 0x7f

    if-le v4, v11, :cond_3a

    const/16 v4, 0x63

    :cond_39
    :goto_1c
    int-to-byte v4, v4

    aput-byte v4, v3, v6

    add-int/lit8 v4, v6, 0x1

    iget-short v2, v2, Lcom/loc/bh;->l:S

    invoke-static {v2, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v11, v2

    invoke-static {v2, v6, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v4

    goto/16 :goto_18

    :cond_3a
    const/16 v11, -0x80

    if-ge v4, v11, :cond_39

    const/16 v4, 0x63

    goto :goto_1c

    :cond_3b
    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v6, v4, 0x1

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x0

    aput-byte v2, v3, v6

    add-int/lit8 v2, v6, 0x1

    :goto_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/loc/bx;->F:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x19

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v12, :cond_45

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :goto_1e
    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->I:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x7f

    if-le v5, v6, :cond_3d

    const/4 v4, 0x0

    :cond_3d
    if-nez v4, :cond_4d

    const/4 v4, 0x0

    aput-byte v4, v3, v2
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    add-int/lit8 v2, v2, 0x1

    :goto_1f
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bx;->L:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->L:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v4

    :cond_3e
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14

    add-int/lit8 v2, v2, 0x2

    if-nez v5, :cond_3f

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->L:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1e

    add-int/2addr v2, v4

    :cond_3f
    :goto_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/bx;->G:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    if-nez v8, :cond_4e

    const/4 v4, 0x0

    :try_start_15
    invoke-static {v4, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    add-int/lit8 v2, v2, 0x2

    :goto_21
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bx;->J:[B

    if-eqz v5, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->J:[B

    array-length v4, v4

    :cond_40
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    if-lez v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->J:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bx;->J:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bx;->J:[B

    array-length v4, v4

    add-int/2addr v2, v4

    :cond_41
    new-array v4, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ci;->a(J)[B

    move-result-object v3

    array-length v5, v3

    add-int/2addr v5, v2

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_42
    const/4 v2, 0x1

    aput-byte v2, v3, v6

    add-int/lit8 v4, v6, 0x1

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->E:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bx;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_11

    add-int/2addr v4, v2

    const/4 v2, 0x2

    :try_start_17
    aget-object v2, v5, v2

    const-string v6, "GBK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v6, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10

    add-int/2addr v4, v2

    :goto_22
    const/4 v2, 0x1

    :try_start_18
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x7f

    if-le v2, v5, :cond_44

    const/4 v2, 0x0

    :cond_43
    :goto_23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_1d

    :catch_10
    move-exception v2

    const-string v6, "Req"

    const-string v7, "buildV4Dot214"

    invoke-static {v2, v6, v7}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_44
    const/16 v5, -0x80

    if-ge v2, v5, :cond_43

    const/4 v2, 0x0

    goto :goto_23

    :catch_11
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot216"

    invoke-static {v2, v5, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "00:00:00:00:00:00"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bx;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v4

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_45
    int-to-byte v4, v12

    aput-byte v4, v3, v2

    add-int/lit8 v6, v2, 0x1

    invoke-static {}, Lcom/loc/ci;->c()I

    move-result v2

    const/16 v4, 0x11

    if-lt v2, v4, :cond_4a

    const/4 v2, 0x1

    move v9, v2

    :goto_24
    const-wide/16 v4, 0x0

    if-eqz v9, :cond_46

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    :cond_46
    const/4 v2, 0x0

    move v8, v2

    :goto_25
    if-ge v8, v12, :cond_4c

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/loc/bx;->a(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v13, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v6, v7

    :try_start_19
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v13, "GBK"

    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v13, v7

    int-to-byte v13, v13

    aput-byte v13, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v13, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    add-int/2addr v6, v7

    :goto_26
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    const/16 v13, 0x7f

    if-le v7, v13, :cond_4b

    const/4 v7, 0x0

    :cond_47
    :goto_27
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v7, v6, 0x1

    if-eqz v9, :cond_48

    iget-wide v14, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v14, v4, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    long-to-int v6, v14

    if-gez v6, :cond_49

    :cond_48
    const/4 v6, 0x0

    :cond_49
    invoke-static {v6, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v6

    const/4 v13, 0x0

    array-length v14, v6

    invoke-static {v6, v13, v3, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v6, v7

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v2, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v2

    const/4 v7, 0x0

    array-length v13, v2

    invoke-static {v2, v7, v3, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v6, v2

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_25

    :cond_4a
    const/4 v2, 0x0

    move v9, v2

    goto :goto_24

    :catch_12
    move-exception v7

    const/4 v7, 0x0

    aput-byte v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_4b
    const/16 v13, -0x80

    if-ge v7, v13, :cond_47

    const/4 v7, 0x0

    goto :goto_27

    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bx;->H:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v6

    goto/16 :goto_1e

    :cond_4d
    :try_start_1a
    array-length v5, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_13

    add-int/2addr v2, v4

    goto/16 :goto_1f

    :catch_13
    move-exception v4

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    :catch_14
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_20

    :catch_15
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_21

    :cond_4e
    :try_start_1b
    invoke-static {v8, v10}, Lcom/loc/ci;->a(I[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_16

    add-int/lit8 v2, v2, 0x2

    :goto_28
    const/4 v4, 0x0

    move v5, v4

    move v4, v2

    :goto_29
    if-ge v5, v8, :cond_52

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/be;

    :try_start_1c
    iget-object v6, v2, Lcom/loc/be;->c:[B

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_17

    add-int/2addr v4, v6

    move v6, v4

    :goto_2a
    :try_start_1d
    iget-object v4, v2, Lcom/loc/be;->a:Ljava/lang/String;

    const-string v9, "GBK"

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x0

    array-length v4, v9

    const/16 v11, 0x20

    if-le v4, v11, :cond_50

    const/16 v4, 0x20

    :goto_2b
    invoke-static {v9, v10, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_18

    add-int/lit8 v4, v6, 0x20

    :goto_2c
    const/4 v6, 0x4

    :try_start_1e
    new-array v6, v6, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    iget-object v6, v2, Lcom/loc/be;->d:Ljava/lang/String;

    const-string v9, "GBK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_19

    add-int/lit8 v4, v4, 0x4

    :goto_2d
    const/4 v6, 0x4

    :try_start_1f
    new-array v6, v6, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    iget-object v6, v2, Lcom/loc/be;->e:Ljava/lang/String;

    const-string v9, "GBK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1a

    add-int/lit8 v4, v4, 0x4

    :goto_2e
    :try_start_20
    iget v6, v2, Lcom/loc/be;->g:I

    const/16 v9, 0x7f

    if-le v6, v9, :cond_51

    const/4 v6, 0x0

    iput v6, v2, Lcom/loc/be;->g:I

    :cond_4f
    :goto_2f
    iget v6, v2, Lcom/loc/be;->g:I

    int-to-byte v6, v6

    aput-byte v6, v3, v4
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1b

    add-int/lit8 v4, v4, 0x1

    :goto_30
    const/4 v6, 0x4

    :try_start_21
    new-array v6, v6, [B

    iget v9, v2, Lcom/loc/be;->f:I

    invoke-static {v9, v6}, Lcom/loc/ci;->b(I[B)[B

    move-result-object v6

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1c

    add-int/lit8 v4, v4, 0x4

    :goto_31
    const/4 v6, 0x4

    :try_start_22
    new-array v6, v6, [B

    iget v2, v2, Lcom/loc/be;->j:I

    invoke-static {v2, v6}, Lcom/loc/ci;->b(I[B)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v9, v2

    invoke-static {v2, v6, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_1d

    add-int/lit8 v2, v4, 0x4

    :goto_32
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto/16 :goto_29

    :catch_16
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_28

    :catch_17
    move-exception v6

    add-int/lit8 v4, v4, 0x6

    move v6, v4

    goto/16 :goto_2a

    :cond_50
    :try_start_23
    array-length v4, v9
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_18

    goto/16 :goto_2b

    :catch_18
    move-exception v4

    add-int/lit8 v4, v6, 0x20

    goto/16 :goto_2c

    :catch_19
    move-exception v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_2d

    :catch_1a
    move-exception v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_2e

    :cond_51
    :try_start_24
    iget v6, v2, Lcom/loc/be;->g:I

    const/16 v9, -0x80

    if-ge v6, v9, :cond_4f

    const/4 v6, 0x0

    iput v6, v2, Lcom/loc/be;->g:I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1b

    goto :goto_2f

    :catch_1b
    move-exception v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :catch_1c
    move-exception v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_31

    :catch_1d
    move-exception v2

    add-int/lit8 v2, v4, 0x4

    goto :goto_32

    :catch_1e
    move-exception v4

    goto/16 :goto_20

    :cond_52
    move v2, v4

    goto/16 :goto_21

    :cond_53
    move v2, v6

    goto/16 :goto_18

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
