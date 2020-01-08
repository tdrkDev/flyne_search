.class Lcom/inveno/reportsdk/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private final a:J

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/inveno/reportsdk/x$a;->a:J

    iput p3, p0, Lcom/inveno/reportsdk/x$a;->b:I

    iput-object p4, p0, Lcom/inveno/reportsdk/x$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/inveno/reportsdk/x$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/inveno/reportsdk/x$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/inveno/reportsdk/x$a;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/inveno/reportsdk/x$a;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/inveno/reportsdk/x$a;->h:Ljava/lang/String;

    iput-wide p10, p0, Lcom/inveno/reportsdk/x$a;->i:J

    iput p12, p0, Lcom/inveno/reportsdk/x$a;->j:I

    iput p13, p0, Lcom/inveno/reportsdk/x$a;->k:I

    iput p14, p0, Lcom/inveno/reportsdk/x$a;->l:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->n:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->o:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->p:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->q:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->r:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->s:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/inveno/reportsdk/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ld/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ld/b;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/inveno/reportsdk/x$a;->a:J

    const/4 v4, 0x1

    iput v4, p0, Lcom/inveno/reportsdk/x$a;->b:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getProductId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getPromotion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAppVer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getApiVer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->h:Ljava/lang/String;

    iput-wide v2, p0, Lcom/inveno/reportsdk/x$a;->i:J

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v0}, Ld/d;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/reportsdk/x$a;->j:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSid()I

    move-result v0

    iput v0, p0, Lcom/inveno/reportsdk/x$a;->k:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v0

    iput v0, p0, Lcom/inveno/reportsdk/x$a;->l:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->n:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->o:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->q:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAppLan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->u:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getFuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->v:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSdkVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->x:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getDeviceLan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->y:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->A:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getNmcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->B:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getNmnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->C:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/inveno/reportsdk/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ld/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ld/b;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/inveno/reportsdk/x$a;->a:J

    const/4 v5, 0x1

    iput v5, p0, Lcom/inveno/reportsdk/x$a;->b:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getProductId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/reportsdk/x$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getPromotion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/reportsdk/x$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/reportsdk/x$a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAppVer()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/reportsdk/x$a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getApiVer()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/reportsdk/x$a;->g:Ljava/lang/String;

    iput-object v4, p0, Lcom/inveno/reportsdk/x$a;->h:Ljava/lang/String;

    iput-wide v2, p0, Lcom/inveno/reportsdk/x$a;->i:J

    sget-object v2, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v2}, Ld/d;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/inveno/reportsdk/x$a;->j:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSid()I

    move-result v2

    iput v2, p0, Lcom/inveno/reportsdk/x$a;->k:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v2

    iput v2, p0, Lcom/inveno/reportsdk/x$a;->l:I

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->n:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getBrand()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->o:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getModel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getPlatform()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->q:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAppLan()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/reportsdk/x$a;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/inveno/reportsdk/x$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->t:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getFuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->v:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSdkVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->x:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getDeviceLan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->y:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->A:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getNmcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->B:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getNmnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->C:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getReferrer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/x$a;->D:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/reportsdk/x$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/reportsdk/x$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inveno/reportsdk/x$a;)I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/x$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/inveno/reportsdk/x$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/reportsdk/x$a;->i:J

    return-wide v0
.end method

.method static synthetic l(Lcom/inveno/reportsdk/x$a;)I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/x$a;->j:I

    return v0
.end method

.method static synthetic m(Lcom/inveno/reportsdk/x$a;)I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/x$a;->k:I

    return v0
.end method

.method static synthetic n(Lcom/inveno/reportsdk/x$a;)I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/x$a;->l:I

    return v0
.end method

.method static synthetic o(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/inveno/reportsdk/x$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/x$a;->C:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Lcom/inveno/reportsdk/x;
    .locals 2

    new-instance v0, Lcom/inveno/reportsdk/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/reportsdk/x;-><init>(Lcom/inveno/reportsdk/x$a;Lcom/inveno/reportsdk/x$1;)V

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->v:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->w:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->x:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->y:Ljava/lang/String;

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->z:Ljava/lang/String;

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->A:Ljava/lang/String;

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->B:Ljava/lang/String;

    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->C:Ljava/lang/String;

    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/x$a;->D:Ljava/lang/String;

    return-void
.end method
