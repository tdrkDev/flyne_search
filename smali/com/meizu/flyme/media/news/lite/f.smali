.class public final Lcom/meizu/flyme/media/news/lite/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/f$b;,
        Lcom/meizu/flyme/media/news/lite/f$a;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/meizu/flyme/media/news/lite/f;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final b:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/advertise/api/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:Lcom/meizu/flyme/media/news/protocol/d;

.field private final s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meizu/flyme/media/news/lite/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Landroid/view/ViewGroup;

.field private y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

.field private z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$1;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->b:Lcom/meizu/flyme/media/news/protocol/c;

    .line 89
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$11;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$11;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->c:Lcom/meizu/flyme/media/news/protocol/c;

    .line 96
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$20;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$20;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->d:Lcom/meizu/flyme/media/news/protocol/c;

    .line 103
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$21;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$21;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->e:Lcom/meizu/flyme/media/news/protocol/c;

    .line 110
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$22;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$22;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->f:Lcom/meizu/flyme/media/news/protocol/c;

    .line 117
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$23;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/f$23;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/f;->g:Lcom/meizu/flyme/media/news/protocol/c;

    return-void
.end method

.method private constructor <init>(Lcom/meizu/flyme/media/news/lite/f$a;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    .line 139
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->p:I

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->v:Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->w:I

    .line 158
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    .line 162
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->b:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->i:I

    .line 163
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->c:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->j:I

    .line 164
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->d:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->k:I

    .line 165
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->f:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->l:I

    .line 166
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->g:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->m:I

    .line 167
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->n:Ljava/lang/String;

    .line 168
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->i:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->o:I

    .line 169
    iget v0, p1, Lcom/meizu/flyme/media/news/lite/f$a;->j:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->q:I

    .line 170
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->create(Landroid/content/Context;)Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->t:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/media/news/lite/f$a;Lcom/meizu/flyme/media/news/lite/f$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;-><init>(Lcom/meizu/flyme/media/news/lite/f$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/flyme/media/news/lite/f$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1992
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$a;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/f$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageNo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    return-object v0
.end method

.method private a(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meizu/flyme/media/news/lite/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v0

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f;->l:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 1214
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    .line 1215
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v4

    invoke-direct {p0, p2}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v6

    move v1, p1

    .line 1214
    invoke-interface/range {v0 .. v6}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->query(IJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1216
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1217
    const-string v0, "NewsFullManager"

    const-string v1, "getNormalArticlesFromCache expect=%d real=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1217
    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1219
    return-object v7
.end method

.method private a(ILjava/util/Collection;Lcom/meizu/flyme/media/news/lite/i;I)Ljava/util/List;
    .locals 11
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;",
            "Lcom/meizu/flyme/media/news/lite/i;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$6;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/f$6;-><init>(Lcom/meizu/flyme/media/news/lite/f;)V

    invoke-static {p2, v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1248
    const/4 v1, -0x1

    .line 1249
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1250
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 1251
    if-eqz v0, :cond_f

    .line 1252
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v0

    move v3, v0

    .line 1257
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->query(I)Ljava/util/List;

    move-result-object v1

    .line 1259
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;

    invoke-direct {p0, v0, p2}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    const/4 v2, 0x0

    new-instance v5, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;

    invoke-direct {v5, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1263
    const-string v0, "NewsFullManager"

    const-string v1, "handleSpecialArticles add one topic"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v0

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->queryAll(I)Ljava/util/List;

    move-result-object v1

    .line 1275
    invoke-virtual {p0, p4}, Lcom/meizu/flyme/media/news/lite/f;->m(I)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_5

    .line 1277
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 1282
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    .line 1284
    iget v6, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    .line 1286
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    if-le v6, v1, :cond_6

    .line 1304
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1305
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->k(I)Ljava/util/List;

    move-result-object v2

    .line 1306
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->l(I)Ljava/util/List;

    move-result-object v5

    .line 1310
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1311
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1312
    add-int/lit8 v7, v6, -0x1

    .line 1313
    if-gez v7, :cond_9

    .line 1346
    :cond_4
    :goto_4
    const-string v0, "NewsFullManager"

    const-string v1, "handleSpecialArticles resultSize=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    return-object v4

    .line 1279
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 1289
    :cond_6
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    sub-int v1, v6, v2

    add-int/lit8 v7, v1, -0x1

    .line 1291
    if-ltz v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 1292
    const/4 v1, 0x1

    if-ne v6, v1, :cond_7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_8

    :cond_7
    const/4 v1, 0x1

    if-le v6, v1, :cond_2

    .line 1294
    :cond_8
    new-instance v1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-direct {v1, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)V

    invoke-interface {v4, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1295
    const-string v0, "NewsFullManager"

    const-string v1, "handleSpecialArticles add one manual article, manualPosition=%d addIndex=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 1296
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    .line 1295
    invoke-static {v0, v1, v8}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1316
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gt v7, v0, :cond_d

    .line 1317
    const/4 v0, 0x1

    if-ne v6, v0, :cond_a

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_b

    :cond_a
    const/4 v0, 0x1

    if-le v6, v0, :cond_c

    .line 1319
    :cond_b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1320
    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1321
    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/api/a;

    .line 1322
    new-instance v8, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-direct {v8, v0, v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/advertise/api/a;I)V

    invoke-interface {v4, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1323
    const-string v0, "NewsFullManager"

    const-string v8, "handleSpecialArticles add one ad, adPosition=%d addIndex=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1324
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    .line 1323
    invoke-static {v0, v8, v9}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 1329
    :cond_d
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v8

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v0

    .line 1330
    const/4 v8, 0x1

    if-eq v0, v8, :cond_e

    const/4 v8, 0x4

    if-ne v0, v8, :cond_c

    .line 1332
    :cond_e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1333
    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1334
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/api/a;

    .line 1335
    new-instance v1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-direct {v1, v0, v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/advertise/api/a;I)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    const-string v0, "NewsFullManager"

    const-string v1, "handleSpecialArticles add one ad, adPosition=%d addIndex=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1337
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1336
    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    move v3, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 14
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    if-gez p2, :cond_0

    .line 1596
    const-string v2, "NewsFullManager"

    const-string v3, "get card size is not configured!!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    const/16 v2, 0x194

    invoke-static {v2}, Lcom/meizu/flyme/media/news/helper/NewsException;->a(I)Lcom/meizu/flyme/media/news/helper/NewsException;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object/from16 v3, p5

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/flyme/media/news/lite/f$b;->a(Ljava/util/List;Ljava/lang/Throwable;JI)V

    .line 1731
    :goto_0
    return-void

    .line 1602
    :cond_0
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->q()V

    .line 1604
    const-string v2, "NewsFullManager"

    const-string v3, "requestCardArticles size=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1607
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/lite/f;->b(ILcom/meizu/flyme/media/news/lite/i;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1608
    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1611
    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v7, v2

    .line 1612
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/Collection;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1613
    const/4 v2, 0x0

    .line 1614
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1616
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1615
    invoke-static {v2, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;I)I

    move-result v2

    .line 1619
    :cond_2
    add-int/lit8 v11, v2, 0x1

    .line 1620
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x4

    invoke-direct {v13, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1621
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/meizu/flyme/media/news/lite/f$8;

    move-object v6, p0

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v13}, Lcom/meizu/flyme/media/news/lite/f$8;-><init>(Lcom/meizu/flyme/media/news/lite/f;[ZIILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1634
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/f$9;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0, v11, v13}, Lcom/meizu/flyme/media/news/lite/f$9;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1647
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/f$10;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0, v11, v13}, Lcom/meizu/flyme/media/news/lite/f$10;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1660
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/f$12;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0, v13}, Lcom/meizu/flyme/media/news/lite/f$12;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1674
    :try_start_0
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :cond_3
    :goto_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 1682
    :cond_4
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    if-eqz v2, :cond_5

    .line 1683
    const/16 v2, -0x66

    const-string v3, "no more data"

    invoke-static {v2, v3}, Lcom/meizu/flyme/media/news/helper/NewsException;->a(ILjava/lang/String;)Lcom/meizu/flyme/media/news/helper/NewsException;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object/from16 v3, p5

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/flyme/media/news/lite/f$b;->a(Ljava/util/List;Ljava/lang/Throwable;JI)V

    goto/16 :goto_0

    .line 1675
    :catch_0
    move-exception v2

    .line 1676
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1688
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1690
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 1692
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    move/from16 v0, p2

    if-ge v2, v0, :cond_6

    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1693
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    sub-int v2, p2, v2

    .line 1694
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/meizu/flyme/media/news/lite/f;->c(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;

    move-result-object v2

    .line 1695
    invoke-interface {v12, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1716
    :cond_6
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/meizu/flyme/media/news/lite/f$b;->a()I

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v12, v0, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(ILjava/util/Collection;Lcom/meizu/flyme/media/news/lite/i;I)Ljava/util/List;

    move-result-object v4

    .line 1720
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p2

    if-le v2, v0, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->i()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1721
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v4, v2, v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v4

    .line 1726
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1727
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p5

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/flyme/media/news/lite/f$b;->a(Ljava/util/List;Ljava/lang/Throwable;JI)V

    goto/16 :goto_0

    .line 1697
    :cond_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1699
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    move/from16 v0, p2

    if-ge v2, v0, :cond_6

    .line 1700
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    sub-int v2, p2, v2

    .line 1701
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v3

    .line 1702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1704
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/meizu/flyme/media/news/lite/f;->c(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;

    move-result-object v2

    .line 1705
    invoke-interface {v12, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1707
    :cond_9
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/meizu/flyme/media/news/lite/f;->d(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;

    move-result-object v3

    .line 1708
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 1709
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1708
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1729
    :cond_a
    const/16 v2, 0x194

    invoke-static {v2}, Lcom/meizu/flyme/media/news/helper/NewsException;->a(I)Lcom/meizu/flyme/media/news/helper/NewsException;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object/from16 v3, p5

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/flyme/media/news/lite/f$b;->a(Ljava/util/List;Ljava/lang/Throwable;JI)V

    goto/16 :goto_0
.end method

.method private a(ILcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    const-string v0, "NewsFullManager"

    const-string v1, "add a config entity: articleChannelId=%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "NewsFullManager"

    const-string v1, "add a config entity: cardContentCount=%d showChange=%d showMore=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v3, v3, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->cardContentCount:I

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v3, v3, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showChange:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v3, v3, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showMore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 300
    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method private a(ILcom/meizu/flyme/media/news/lite/c$a;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;-><init>()V

    .line 284
    iput p1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->articleChannelId:I

    .line 285
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    .line 286
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->requestId:Ljava/lang/String;

    .line 287
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->disId:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->disId:Ljava/lang/String;

    .line 288
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->algoVer:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->algoVer:Ljava/lang/String;

    .line 289
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->mainChannelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->mainChannelId:Ljava/lang/String;

    .line 290
    iget-object v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->subChannelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->subChannelId:Ljava/lang/String;

    .line 291
    iget v1, p2, Lcom/meizu/flyme/media/news/lite/c$a;->hasMore:I

    iput v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->hasMore:I

    .line 292
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->configDao()Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;->delete(I)V

    .line 293
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->configDao()Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;->insert(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V

    goto :goto_0
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    .line 1368
    iput p1, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    goto :goto_0

    .line 1370
    :cond_0
    return-void
.end method

.method private a(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 9

    .prologue
    .line 1924
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v1

    .line 1926
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1925
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->setChanged(JJLjava/lang/String;I)V

    .line 1934
    :goto_0
    return-void

    .line 1927
    :cond_0
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    .line 1929
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1928
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->setChanged(JJLjava/lang/String;I)V

    goto :goto_0

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v1

    .line 1932
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1931
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->setChanged(JJLjava/lang/String;I)V

    goto :goto_0
.end method

.method private a(JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1351
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 1352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1353
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;

    int-to-long v4, v1

    sub-long v4, p1, v4

    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/media/news/data/NewsLiteCommonBean;->setNewsAddTime(J)V

    .line 1352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1355
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .prologue
    .line 1145
    sget v0, Lcom/meizu/flyme/media/news/lite/R$string;->news_tip_dialog_app_version_too_low:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1146
    const/4 v0, 0x0

    .line 1148
    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1149
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$style;->Base_Theme_Flyme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1153
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1154
    const-string v0, "NewsFullManager"

    const-string v1, "showAppUpdateDialogNotice: context is not activity or application!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    :goto_1
    return-void

    .line 1150
    :cond_1
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1151
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 1158
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_update:I

    invoke-virtual {v0, v1, p2}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 1159
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_cancel:I

    new-instance v2, Lcom/meizu/flyme/media/news/lite/f$5;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/lite/f$5;-><init>(Lcom/meizu/flyme/media/news/lite/f;)V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1166
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1167
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1169
    :cond_3
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->r()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->p(I)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/meizu/flyme/media/news/lite/f;->a(IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;ILcom/meizu/flyme/media/news/lite/i;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/f;->e(ILcom/meizu/flyme/media/news/lite/i;)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/lite/f;->a(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    return-void
.end method

.method private a(Lcom/meizu/flyme/media/news/lite/i;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/flyme/media/news/lite/i;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    .line 1360
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v3

    iput v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 1361
    iput-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 1362
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v3

    iput-boolean v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    goto :goto_0

    .line 1364
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 2236
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2238
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2239
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2240
    if-eqz v1, :cond_1

    .line 2241
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 2242
    invoke-direct {p0, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/io/File;)V

    .line 2241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2245
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2247
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1879
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1903
    :cond_0
    return-void

    .line 1883
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1884
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;

    .line 1886
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->getCpId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1887
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->publishTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->h5Url:Ljava/lang/String;

    .line 1889
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->json_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1890
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1891
    const-string v2, "NewsFullManager"

    const-string v3, "removeInvalidArticles remove one article : %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->title:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1894
    :cond_4
    iget v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->type:I

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->type:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 1895
    :cond_5
    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v2, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v2, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    .line 1897
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    iget v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->manualShowType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1898
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1899
    const-string v2, "NewsFullManager"

    const-string v3, "removeInvalidArticles remove one article : %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;->title:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 2253
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/m;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2254
    const-string v1, "webViewCacheClearState"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 2255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2256
    return-void
.end method

.method private a(III)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1439
    if-nez p1, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v0

    .line 1443
    :cond_1
    if-le p3, v1, :cond_2

    :try_start_0
    const-string v2, "hasMoreTopic"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    :cond_2
    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f;->j:I

    .line 1448
    invoke-virtual {p0, p2}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    .line 1447
    invoke-static {p1, p3, v2}, Lcom/meizu/flyme/media/news/lite/j;->a(III)Lcom/meizu/flyme/media/news/lite/n;

    move-result-object v2

    .line 1449
    invoke-static {v2}, Lcom/meizu/flyme/media/news/base/c;->a(Lcom/meizu/flyme/media/news/base/c;)V

    .line 1450
    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/n;->value:Lcom/meizu/flyme/media/news/lite/n$a;

    .line 1451
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/n$a;->dataList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1454
    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/n$a;->dataList:Ljava/util/List;

    invoke-static {v3}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v3

    .line 1455
    const-string v4, "NewsFullManager"

    const-string v5, "fetchTopics page=%d result=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1457
    if-lez v3, :cond_3

    .line 1458
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v4

    iget-object v6, v2, Lcom/meizu/flyme/media/news/lite/n$a;->dataList:Ljava/util/List;

    invoke-direct {p0, v4, v5, v6}, Lcom/meizu/flyme/media/news/lite/f;->a(JLjava/util/List;)V

    .line 1459
    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v4

    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/n$a;->dataList:Ljava/util/List;

    invoke-interface {v4, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->insert(Ljava/util/List;)V

    .line 1460
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->size()I

    move-result v2

    .line 1461
    iget v4, p0, Lcom/meizu/flyme/media/news/lite/f;->k:I

    if-le v2, v4, :cond_3

    .line 1462
    mul-int/lit8 v4, v2, 0x2

    div-int/lit8 v4, v4, 0x3

    .line 1463
    const-string v5, "NewsFullManager"

    const-string v6, "fetchTopics reset cache size %d -> %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v5}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    .line 1465
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->query(I)Ljava/util/List;

    move-result-object v2

    .line 1464
    invoke-static {v2, v4}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->delete(Ljava/util/List;)V

    .line 1468
    :cond_3
    const-string v4, "hasMoreTopic"

    if-lez v3, :cond_4

    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1469
    goto/16 :goto_0

    :cond_4
    move v2, v0

    .line 1468
    goto :goto_1

    .line 1470
    :catch_0
    move-exception v1

    .line 1471
    const-string v2, "NewsFullManager"

    const-string v3, "fetchTopics"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(IILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/meizu/flyme/media/news/lite/i;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1739
    .line 1740
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1744
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1745
    const-string v3, "NewsFullManager"

    const-string v4, "requestCardArticles: fetch next page=%d, tryCount=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1746
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1745
    invoke-static {v3, v4, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1747
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1748
    invoke-direct {p0, v2, p4, p3}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/List;ILcom/meizu/flyme/media/news/lite/i;)Z

    move-result v3

    .line 1749
    if-eqz v3, :cond_3

    .line 1750
    add-int/lit8 p4, p4, 0x1

    .line 1751
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1765
    :cond_1
    :goto_0
    return v3

    .line 1755
    :cond_2
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result v4

    sub-int v4, p2, v4

    .line 1756
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 1757
    invoke-static {v2, v1, v4}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1762
    :goto_1
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->q()V

    .line 1764
    :cond_3
    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/meizu/flyme/media/news/lite/f;->o:I

    if-gt v0, v4, :cond_1

    invoke-direct {p0, p5, p2}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/Collection;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1759
    :cond_4
    invoke-interface {p5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private a(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)Z
    .locals 4

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsExposeTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1193
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;Ljava/util/Collection;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1177
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsChangeTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 1187
    :goto_0
    return v0

    .line 1181
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsAddTime()J

    move-result-wide v2

    .line 1182
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    .line 1183
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsAddTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f;->l:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 1184
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1187
    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;II)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/f;->b(II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;III)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/lite/f;->a(III)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/f;IILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/meizu/flyme/media/news/lite/f;->a(IILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/meizu/flyme/media/news/lite/i;)Z
    .locals 8
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->queryNewest(ILjava/lang/String;Z)Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsAddTime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v2

    iget v4, p0, Lcom/meizu/flyme/media/news/lite/f;->l:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1204
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1205
    :cond_0
    const/4 v0, 0x1

    .line 1207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;ILcom/meizu/flyme/media/news/lite/i;)Z
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;I",
            "Lcom/meizu/flyme/media/news/lite/i;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1374
    .line 1375
    :try_start_0
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f;->j:I

    .line 1376
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->e()Ljava/lang/String;

    move-result-object v4

    .line 1377
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->f()I

    move-result v5

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->g()I

    move-result v6

    .line 1378
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v1, p2

    .line 1374
    invoke-static/range {v0 .. v8}, Lcom/meizu/flyme/media/news/lite/j;->a(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)Lcom/meizu/flyme/media/news/lite/c;

    move-result-object v0

    .line 1379
    invoke-static {v0}, Lcom/meizu/flyme/media/news/base/c;->a(Lcom/meizu/flyme/media/news/base/c;)V

    .line 1380
    iget-object v8, v0, Lcom/meizu/flyme/media/news/lite/c;->value:Lcom/meizu/flyme/media/news/lite/c$a;

    .line 1381
    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    if-nez v1, :cond_2

    .line 1382
    :cond_0
    iget v0, v0, Lcom/meizu/flyme/media/news/lite/c;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1385
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/c$a;)V

    .line 1386
    const-string v0, "NewsFullManager"

    const-string v1, "fetchArticles page=%d result=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 1434
    :goto_0
    return v0

    :cond_1
    move v0, v10

    .line 1389
    goto :goto_0

    .line 1392
    :cond_2
    iget-object v0, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v0

    .line 1393
    const-string v1, "NewsFullManager"

    const-string v2, "fetchArticles page=%d result=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    if-lez v0, :cond_4

    .line 1396
    iget-object v0, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/List;)V

    .line 1397
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v0

    iget-object v2, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(JLjava/util/List;)V

    .line 1398
    iget-object v0, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-direct {p0, p3, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Ljava/util/List;)V

    .line 1399
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1400
    iget-object v0, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1401
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1402
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    iget-object v1, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1404
    const-string v0, "NewsFullManager"

    const-string v1, "insert article to db failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1407
    iget-object v0, v8, Lcom/meizu/flyme/media/news/lite/c$a;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    .line 1408
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsAddTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getContentId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->updateExistData(JJLjava/lang/String;I)J

    .line 1409
    const-string v1, "NewsFullManager"

    const-string v2, "updateExistData title=\'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    const-string v1, "NewsFullManager"

    const-string v2, "fetchArticles"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 1434
    goto/16 :goto_0

    .line 1412
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->size()I

    move-result v0

    .line 1413
    iget v1, p0, Lcom/meizu/flyme/media/news/lite/f;->i:I

    if-le v0, v1, :cond_4

    .line 1414
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    .line 1415
    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->queryALL()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 1414
    invoke-static {v1, v2}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1416
    const-string v2, "NewsFullManager"

    const-string v3, "fetchArticles reset cache size %d -> %d removed=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    sget-object v5, Lcom/meizu/flyme/media/news/lite/f;->c:Lcom/meizu/flyme/media/news/protocol/c;

    .line 1417
    invoke-static {v1, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1416
    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1418
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->delete(Ljava/util/List;)V

    .line 1424
    :cond_4
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/c$a;)V

    .line 1426
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/m;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1427
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v9

    .line 1430
    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/f;)I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->o()I

    move-result v0

    return v0
.end method

.method private b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->f()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->g()I

    move-result v1

    if-lez v1, :cond_0

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :cond_0
    const-string v1, "NewsFullManager"

    const-string v2, "getQueryKeyword keyword=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    return-object v0
.end method

.method private b(ILjava/util/List;)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->queryExposed(I)Ljava/util/List;

    move-result-object v0

    .line 1519
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    .line 1521
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1523
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1525
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    .line 1526
    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1527
    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsExposeTime()J

    move-result-wide v4

    .line 1528
    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsExposeTime(J)V

    goto :goto_1

    .line 1532
    :cond_2
    return-void
.end method

.method private b(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 9

    .prologue
    .line 1937
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v1

    .line 1939
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1938
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->setExposed(JJLjava/lang/String;I)V

    .line 1947
    :goto_0
    return-void

    .line 1940
    :cond_0
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    .line 1942
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1941
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->setExposed(JJLjava/lang/String;I)V

    goto :goto_0

    .line 1944
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v1

    .line 1945
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1944
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->setExposed(JJLjava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/lite/f;->b(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_0
    return-void
.end method

.method private b(II)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1478
    if-le p2, v1, :cond_1

    :try_start_0
    const-string v2, "hasMoreManual"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return v0

    .line 1482
    :cond_1
    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f;->j:I

    invoke-static {p1, p2, v2}, Lcom/meizu/flyme/media/news/lite/j;->b(III)Lcom/meizu/flyme/media/news/lite/g;

    move-result-object v2

    .line 1484
    invoke-static {v2}, Lcom/meizu/flyme/media/news/base/c;->a(Lcom/meizu/flyme/media/news/base/c;)V

    .line 1485
    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/g;->value:Lcom/meizu/flyme/media/news/lite/g$a;

    .line 1486
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1489
    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-static {v3}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v3

    .line 1490
    const-string v4, "NewsFullManager"

    const-string v5, "fetchManualArticles page=%d result=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    if-lez v3, :cond_2

    .line 1493
    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/List;)V

    .line 1494
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v4

    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-direct {p0, v4, v5, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(JLjava/util/List;)V

    .line 1495
    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-direct {p0, p1, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(ILjava/util/List;)V

    .line 1496
    iget-object v3, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-direct {p0, p1, v3}, Lcom/meizu/flyme/media/news/lite/f;->b(ILjava/util/List;)V

    .line 1497
    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->deleteAll(I)V

    .line 1498
    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v3

    iget-object v4, v2, Lcom/meizu/flyme/media/news/lite/g$a;->result:Ljava/util/List;

    invoke-interface {v3, v4}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->insert(Ljava/util/List;)V

    .line 1500
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/m;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1501
    const-string v4, "algoVerManual"

    iget-object v5, v2, Lcom/meizu/flyme/media/news/lite/g$a;->algoVer:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1502
    const-string v4, "hasMoreManual"

    iget v5, v2, Lcom/meizu/flyme/media/news/lite/g$a;->hasMore:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1503
    const-string v4, "mainChannelIdManual"

    iget-object v5, v2, Lcom/meizu/flyme/media/news/lite/g$a;->mainChannelId:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1504
    const-string v4, "subChannelIdManual"

    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/g$a;->subChannelId:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1505
    const-string v2, "pageNoManual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    .line 1506
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 1508
    goto/16 :goto_0

    .line 1509
    :catch_0
    move-exception v1

    .line 1510
    const-string v2, "NewsFullManager"

    const-string v3, "fetchManualArticles"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private b(ILcom/meizu/flyme/media/news/lite/i;)Z
    .locals 1

    .prologue
    .line 1581
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    :cond_0
    const/4 v0, 0x0

    .line 1584
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/f;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f;->q:I

    return v0
.end method

.method private c(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meizu/flyme/media/news/lite/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    .line 1771
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-direct {p0, p2}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v4

    .line 1770
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->queryOldForChange(IILjava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 1772
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    new-instance v3, Lcom/meizu/flyme/media/news/lite/f$13;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/media/news/lite/f$13;-><init>(Lcom/meizu/flyme/media/news/lite/f;)V

    invoke-static {v1, v3}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1782
    const-string v1, "NewsFullManager"

    const-string v3, "getOldArticlesFromCache articles=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/meizu/flyme/media/news/lite/f;->g:Lcom/meizu/flyme/media/news/protocol/c;

    .line 1783
    invoke-static {v2, v6}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    .line 1782
    invoke-static {v1, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1784
    return-object v0
.end method

.method private c(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 9

    .prologue
    .line 1950
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v1

    .line 1952
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1951
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->setRead(JJLjava/lang/String;I)V

    .line 1960
    :goto_0
    return-void

    .line 1953
    :cond_0
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    .line 1955
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1954
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->setRead(JJLjava/lang/String;I)V

    goto :goto_0

    .line 1957
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    move-result-object v1

    .line 1958
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v7

    move-wide v2, p1

    .line 1957
    invoke-interface/range {v1 .. v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;->setRead(JJLjava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/lite/f;->c(JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    return-void
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/f;)J
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meizu/flyme/media/news/lite/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v1

    .line 1790
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-direct {p0, p2}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v4

    .line 1789
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->queryOldForSlideMore(IILjava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 1791
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1792
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    new-instance v3, Lcom/meizu/flyme/media/news/lite/f$14;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/media/news/lite/f$14;-><init>(Lcom/meizu/flyme/media/news/lite/f;)V

    invoke-static {v1, v3}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1801
    const-string v1, "NewsFullManager"

    const-string v3, "getOldArticlesFromCache articles=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/meizu/flyme/media/news/lite/f;->g:Lcom/meizu/flyme/media/news/protocol/c;

    .line 1802
    invoke-static {v2, v6}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    .line 1801
    invoke-static {v1, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    return-object v0
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/f;)Lcom/meizu/flyme/media/news/lite/f;
    .locals 0

    .prologue
    .line 77
    sput-object p0, Lcom/meizu/flyme/media/news/lite/f;->A:Lcom/meizu/flyme/media/news/lite/f;

    return-object p0
.end method

.method private e(ILcom/meizu/flyme/media/news/lite/i;)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1808
    if-ne p1, v4, :cond_0

    .line 1809
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 1810
    if-nez v0, :cond_2

    .line 1811
    const-string v0, "NewsFullManager"

    const-string v1, "requestForceWhenFirst: APP has no config data"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->configDao()Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    move-result-object v0

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;->query(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 1813
    if-eqz v0, :cond_1

    .line 1814
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V

    .line 1816
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->p(I)V

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    const-string v0, "NewsFullManager"

    const-string v1, "requestForceWhenFirst: database has no config data, need to fetch config data"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    invoke-direct {p0, v0, v4, p2}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/util/List;ILcom/meizu/flyme/media/news/lite/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1824
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/f$15;

    invoke-direct {v2, p0, p2, v0}, Lcom/meizu/flyme/media/news/lite/f$15;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1837
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/f$16;

    invoke-direct {v2, p0, p2, v0}, Lcom/meizu/flyme/media/news/lite/f$16;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1850
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/f$17;

    invoke-direct {v2, p0, p2, v0}, Lcom/meizu/flyme/media/news/lite/f$17;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1864
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1872
    :cond_2
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->p(I)V

    goto :goto_0
.end method

.method public static h()Lcom/meizu/flyme/media/news/lite/f;
    .locals 1

    .prologue
    .line 1983
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->A:Lcom/meizu/flyme/media/news/lite/f;

    return-object v0
.end method

.method static synthetic j()Lcom/meizu/flyme/media/news/protocol/c;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->b:Lcom/meizu/flyme/media/news/protocol/c;

    return-object v0
.end method

.method static synthetic k()Lcom/meizu/flyme/media/news/protocol/c;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->d:Lcom/meizu/flyme/media/news/protocol/c;

    return-object v0
.end method

.method static synthetic l()Lcom/meizu/flyme/media/news/protocol/c;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->f:Lcom/meizu/flyme/media/news/protocol/c;

    return-object v0
.end method

.method static synthetic m()Lcom/meizu/flyme/media/news/lite/f;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->A:Lcom/meizu/flyme/media/news/lite/f;

    return-object v0
.end method

.method static synthetic n()Lcom/meizu/flyme/media/news/protocol/c;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/flyme/media/news/lite/f;->g:Lcom/meizu/flyme/media/news/protocol/c;

    return-object v0
.end method

.method private o()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0xf

    return v0
.end method

.method private o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()J
    .locals 2

    .prologue
    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private p(I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1536
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->k(I)Ljava/util/List;

    move-result-object v3

    .line 1538
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1539
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1540
    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1545
    :goto_0
    if-nez v0, :cond_2

    .line 1546
    const-string v0, "NewsFullManager"

    const-string v2, "fetchAdData: not need to fetch ad data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1559
    :cond_1
    :goto_1
    return-void

    .line 1549
    :cond_2
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getAdDataLoader()Lcom/meizu/advertise/api/b;

    move-result-object v4

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-wide/16 v6, 0xbb8

    invoke-interface {v4, v0, v6, v7}, Lcom/meizu/advertise/api/b;->a([Ljava/lang/String;J)[Lcom/meizu/advertise/api/a;

    move-result-object v3

    .line 1550
    if-nez v3, :cond_3

    .line 1551
    const-string v0, "NewsFullManager"

    const-string v2, "fetchAdData: Ad data is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1553
    :cond_3
    const-string v0, "NewsFullManager"

    const-string v4, "fetchAdData: resultSize=%d"

    new-array v2, v2, [Ljava/lang/Object;

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v4, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1554
    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 1555
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->a:Ljava/util/HashMap;

    aget-object v2, v3, v0

    invoke-interface {v2}, Lcom/meizu/advertise/api/a;->b()Ljava/lang/String;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    .line 1562
    sget-boolean v0, Lcom/meizu/flyme/media/news/helper/a;->a:Z

    if-nez v0, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->queryALL()Ljava/util/List;

    move-result-object v0

    .line 1566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    new-instance v2, Lcom/meizu/flyme/media/news/lite/f$7;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/lite/f$7;-><init>(Lcom/meizu/flyme/media/news/lite/f;)V

    invoke-static {v0, v2}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1575
    const-string v0, "NewsFullManager"

    const-string v2, "database articles: articles=%s size=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/meizu/flyme/media/news/lite/f;->g:Lcom/meizu/flyme/media/news/protocol/c;

    .line 1576
    invoke-static {v1, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 1575
    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private r()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1907
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 1911
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->size()I

    move-result v2

    .line 1912
    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->deleteExpireData(J)V

    .line 1913
    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;->size()I

    move-result v3

    .line 1914
    const-string v4, "NewsFullManager"

    const-string v5, "removeExpireArticlesFromCache removed article size=%d"

    new-array v6, v8, [Ljava/lang/Object;

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->size()I

    move-result v2

    .line 1918
    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->deleteExpireData(J)V

    .line 1919
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->s:Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;->size()I

    move-result v0

    .line 1920
    const-string v1, "NewsFullManager"

    const-string v3, "removeExpireArticlesFromCache removed topic size=%d"

    new-array v4, v8, [Ljava/lang/Object;

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    return-void
.end method

.method private s()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1963
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1964
    if-eqz v0, :cond_1

    .line 1965
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1966
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1968
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1966
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1968
    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-nez v1, :cond_1

    .line 317
    :cond_0
    const/4 v0, -0x1

    .line 319
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->cardContentCount:I

    goto :goto_0
.end method

.method public a(IZ)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 323
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    if-eqz p2, :cond_2

    .line 328
    iget-object v2, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v2, v2, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    if-eqz v2, :cond_0

    .line 329
    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;->showChange:I

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showChange:I

    goto :goto_0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    return-object v0
.end method

.method public a(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Landroid/content/Intent;
    .locals 9
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 868
    if-nez p3, :cond_0

    .line 869
    const-string v0, "NewsFullManager"

    const-string v1, "onArticleClickIntent article is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    .line 872
    :cond_0
    if-nez p2, :cond_1

    .line 873
    const-string v0, "NewsFullManager"

    const-string v1, "onArticleClickIntent context is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    const/4 v0, 0x0

    goto :goto_0

    .line 876
    :cond_1
    const-string v0, "NewsFullManager"

    const-string v1, "onArticleClick \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v1

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    .line 878
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v6

    move v0, p1

    move v8, p4

    .line 877
    invoke-static/range {v0 .. v8}, Lcom/meizu/flyme/media/news/lite/k;->b(IIIIJJI)V

    .line 879
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 880
    const-string v0, "sdkAlgoVersion"

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v0, "sdkChannelId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v0, "sdkArticleType"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v0, "AppSource"

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 967
    const/4 v0, 0x0

    goto :goto_0

    .line 889
    :pswitch_0
    const-string v0, "from_page"

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 894
    invoke-static {p2, v0}, Lcom/meizu/flyme/media/news/a/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    const-string v0, "com.meizu.media.reader"

    invoke-static {v0, p2}, Lcom/meizu/flyme/media/news/a/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_0

    .line 902
    :pswitch_1
    const-string v0, "dataSource"

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v0, "source"

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string v0, "articleId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v0, "articleUniqueId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v0, "resourceType"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v0, "extend"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getExtent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v0, "requestId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v0, "categoryId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_5

    .line 914
    const-string v0, "flymenews://com.meizu.media.reader/videoplayer"

    .line 915
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->j(I)Ljava/lang/String;

    move-result-object v3

    .line 916
    const-string v4, "videoAd"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v3, "videoUrl"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v3, "videoLength"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getVideoDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 920
    const-string v3, "videoImageUrl"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_2
    const-string v3, "videoTitle"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v3, "videoPlayCount"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getVideoPlayCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :goto_1
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 939
    invoke-static {p2, v1}, Lcom/meizu/flyme/media/news/a/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 940
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 942
    const-string v3, "com.meizu.media.reader"

    .line 943
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 944
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    invoke-static {v1}, Lcom/meizu/flyme/media/news/helper/d;->b(Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v4

    const-string v5, "setForceMode"

    invoke-virtual {v4, v5}, Lcom/meizu/flyme/media/news/helper/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 947
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 949
    const-string v4, "com.meizu.media.reader.videoplayer.VideoPlayerActivity"

    .line 950
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 952
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v1

    .line 972
    :cond_3
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->setRead(Z)V

    .line 974
    invoke-virtual {p0, p5}, Lcom/meizu/flyme/media/news/lite/f;->m(I)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v1

    .line 975
    if-eqz v1, :cond_4

    .line 976
    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->notifyDataSetChanged()V

    .line 979
    :cond_4
    new-instance v1, Lcom/meizu/flyme/media/news/lite/f$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/meizu/flyme/media/news/lite/f$3;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 925
    :cond_5
    const-string v0, "flymenews://com.meizu.media.reader/article"

    .line 926
    const-string v3, "openUrl"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v3, "openType"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getOpenType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v3, "articleSource"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v3, "articleTitle"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v3, "realLogUrl"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getRealLogUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v3, "contentType"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v3, "entityUniqId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getEntityUniqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v3, "adExtra"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v3, "cpId"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->i(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    const-string v4, "adId"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 955
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 957
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 958
    const-string v3, "openUrl"

    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getReserveH5Url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 780
    const-string v0, "NewsFullManager"

    const-string v1, "onCardExpose"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    invoke-static {p1, p2}, Lcom/meizu/flyme/media/news/lite/k;->a(II)V

    .line 782
    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 735
    if-nez p2, :cond_0

    .line 736
    const-string v0, "NewsFullManager"

    const-string v1, "moreNews context is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    const-string v0, "NewsFullManager"

    const-string v1, "moreNews"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/k;->a(I)V

    .line 741
    const-string v0, "com.meizu.media.reader"

    invoke-static {v0, p2}, Lcom/meizu/flyme/media/news/a/b;->c(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(ILcom/meizu/advertise/api/a;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/advertise/api/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 820
    if-nez p2, :cond_0

    .line 821
    const-string v0, "NewsFullManager"

    const-string v1, "onAdExpose adData is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    :goto_0
    return-void

    .line 824
    :cond_0
    const-string v0, "NewsFullManager"

    const-string v1, "onAdExpose \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->c()I

    move-result v0

    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/meizu/flyme/media/news/lite/k;->a(IILjava/lang/String;I)V

    .line 826
    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V
    .locals 9
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 794
    if-nez p2, :cond_0

    .line 795
    const-string v0, "NewsFullManager"

    const-string v1, "onArticleExpose article is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    :goto_0
    return-void

    .line 798
    :cond_0
    const-string v0, "NewsFullManager"

    const-string v1, "onArticleExpose \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v1

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    .line 800
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v6

    move v0, p1

    move v8, p3

    .line 799
    invoke-static/range {v0 .. v8}, Lcom/meizu/flyme/media/news/lite/k;->a(IIIIJJI)V

    .line 801
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/meizu/flyme/media/news/lite/f$2;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(ILcom/meizu/flyme/media/news/lite/b;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;ILcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;)V
    .locals 6

    .prologue
    .line 2268
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    :goto_0
    return-void

    .line 2271
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .line 2272
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->x:Landroid/view/ViewGroup;

    .line 2273
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2274
    invoke-static {}, Lcom/meizu/flyme/media/news/helper/f;->a()Z

    .line 2276
    :cond_1
    new-instance v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    .line 2277
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->setData(Landroid/view/View;Landroid/view/View;ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V

    .line 2278
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    invoke-virtual {v0, p7}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->setFeedBackListener(Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;)V

    .line 2279
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->x:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/i;Landroid/content/Context;)V
    .locals 5
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 752
    if-nez p1, :cond_0

    .line 753
    const-string v0, "NewsFullManager"

    const-string v1, "moreNewsList request data is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    :goto_0
    return-void

    .line 756
    :cond_0
    if-nez p2, :cond_1

    .line 757
    const-string v0, "NewsFullManager"

    const-string v1, "moreNewsList context is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 760
    :cond_1
    const-string v0, "NewsFullManager"

    const-string v1, "moreNewsList"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/k;->a(I)V

    .line 762
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/flyme/media/news/lite/NewsFullMoreListActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 764
    const-string v2, "requestData"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 765
    instance-of v2, p2, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 766
    const-string v2, "NewsFullManager"

    const-string v3, "start activity: context is not activity!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 769
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 3
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 527
    if-nez p1, :cond_0

    .line 528
    const-string v0, "NewsFullManager"

    const-string v1, "firstCardArticles request data is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :goto_0
    return-void

    .line 531
    :cond_0
    if-nez p2, :cond_1

    .line 532
    const-string v0, "NewsFullManager"

    const-string v1, "firstCardArticles handler is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1}, Lcom/meizu/flyme/media/news/lite/f$b;->a(II)V

    .line 536
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/f$24;-><init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;I)V
    .locals 8
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 659
    if-nez p1, :cond_1

    .line 660
    const-string v0, "NewsFullManager"

    const-string v1, "moreCardArticles request data is null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    if-nez p2, :cond_2

    .line 664
    const-string v0, "NewsFullManager"

    const-string v1, "moreCardArticles handler is null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v0

    .line 669
    if-ne v0, v7, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->o()I

    move-result v0

    .line 678
    :goto_1
    const-string v1, "NewsFullManager"

    const-string v2, "moreCardArticles size=%d articleChannelId=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-static {v1, v0, p3}, Lcom/meizu/flyme/media/news/lite/k;->a(III)V

    .line 681
    invoke-virtual {p2, v7, v6}, Lcom/meizu/flyme/media/news/lite/f$b;->a(II)V

    .line 683
    new-instance v1, Lcom/meizu/flyme/media/news/lite/f$26;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/meizu/flyme/media/news/lite/f$26;-><init>(Lcom/meizu/flyme/media/news/lite/f;ILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v0

    goto :goto_1
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;Ljava/util/List;)V
    .locals 9
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/flyme/media/news/lite/i;",
            "Lcom/meizu/flyme/media/news/lite/f$b;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 588
    if-nez p1, :cond_0

    .line 589
    const-string v0, "NewsFullManager"

    const-string v1, "changeCardArticles request data is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :goto_0
    return-void

    .line 592
    :cond_0
    if-nez p2, :cond_1

    .line 593
    const-string v0, "NewsFullManager"

    const-string v1, "changeCardArticles handler is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v6

    .line 597
    const-string v0, "NewsFullManager"

    const-string v1, "changeCardArticles size=%d articleChannelId=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    const/4 v1, -0x1

    .line 600
    invoke-static {p3}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 601
    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v0

    .line 604
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-static {v1, v6, v0}, Lcom/meizu/flyme/media/news/lite/k;->b(III)V

    .line 606
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/f;->p()J

    move-result-wide v4

    .line 607
    new-instance v1, Lcom/meizu/flyme/media/news/lite/f$25;

    move-object v2, p0

    move-object v3, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/meizu/flyme/media/news/lite/f$25;-><init>(Lcom/meizu/flyme/media/news/lite/f;Ljava/util/List;JILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)V
    .locals 6

    .prologue
    .line 2294
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f$19;-><init>(Lcom/meizu/flyme/media/news/lite/f;Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2306
    return-void
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    const/4 v0, -0x1

    .line 361
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showMore:I

    goto :goto_0
.end method

.method public b()Lcom/meizu/flyme/media/news/protocol/d;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->r:Lcom/meizu/flyme/media/news/protocol/d;

    return-object v0
.end method

.method public b(ILcom/meizu/advertise/api/a;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/advertise/api/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 845
    if-nez p2, :cond_0

    .line 846
    const-string v0, "NewsFullManager"

    const-string v1, "onAdClick adData is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    const-string v0, "NewsFullManager"

    const-string v1, "onAdClick \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->c()I

    move-result v0

    invoke-interface {p2}, Lcom/meizu/advertise/api/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/meizu/flyme/media/news/lite/k;->b(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2203
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$18;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/lite/f$18;-><init>(Lcom/meizu/flyme/media/news/lite/f;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2209
    return-void
.end method

.method public b(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 3
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 563
    if-nez p1, :cond_1

    .line 564
    const-string v0, "NewsFullManager"

    const-string v1, "changeCardArticles request data is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    if-nez p2, :cond_2

    .line 568
    const-string v0, "NewsFullManager"

    const-string v1, "changeCardArticles handler is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/f$b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->m(I)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    .line 574
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Z
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1005
    if-nez p2, :cond_0

    .line 1006
    const-string v0, "NewsFullManager"

    const-string v2, "onArticleClick context is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1061
    :goto_0
    return v0

    .line 1009
    :cond_0
    invoke-static {p2}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    invoke-static {p2}, Lcom/meizu/flyme/media/news/a/h;->d(Landroid/content/Context;)V

    move v0, v1

    .line 1011
    goto :goto_0

    .line 1013
    :cond_1
    if-nez p3, :cond_2

    .line 1014
    const-string v0, "NewsFullManager"

    const-string v2, "onArticleClick article is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1015
    goto :goto_0

    .line 1017
    :cond_2
    const-string v0, "NewsFullManager"

    const-string v2, "onArticleClick"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {p3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_6

    .line 1020
    const-string v0, "com.meizu.media.reader"

    .line 1021
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1022
    const-string v2, "com.meizu.media.reader"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1023
    if-nez v2, :cond_4

    .line 1024
    invoke-virtual/range {p0 .. p5}, Lcom/meizu/flyme/media/news/lite/f;->a(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Landroid/content/Intent;

    move-result-object v0

    .line 1053
    :goto_1
    if-eqz v0, :cond_7

    .line 1054
    instance-of v2, p2, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 1055
    const-string v2, "NewsFullManager"

    const-string v3, "start activity: context is not activity!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1058
    :cond_3
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1059
    const/4 v0, 0x1

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v2, 0x0

    .line 1029
    :try_start_0
    const-string v3, "com.meizu.media.reader"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1033
    :goto_2
    if-eqz v0, :cond_5

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x3d5ef0

    if-ge v0, v2, :cond_5

    .line 1034
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$4;

    invoke-direct {v0, p0, p2}, Lcom/meizu/flyme/media/news/lite/f$4;-><init>(Lcom/meizu/flyme/media/news/lite/f;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v1

    .line 1045
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 1047
    :cond_5
    invoke-virtual/range {p0 .. p5}, Lcom/meizu/flyme/media/news/lite/f;->a(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 1051
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/meizu/flyme/media/news/lite/f;->a(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1061
    goto/16 :goto_0
.end method

.method public b(IZ)Z
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v0

    .line 345
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-nez v1, :cond_1

    .line 367
    :cond_0
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showAuthor:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2216
    if-nez p1, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2219
    :cond_1
    const-string v0, "webViewCacheClearState"

    invoke-static {v0, v5}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2220
    const-string v1, "NewsFullManager"

    const-string v2, "clearWebViewCache clearState=%b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    if-nez v0, :cond_0

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_webview/GPUCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2223
    const-string v1, "NewsFullManager"

    const-string v2, "clearWebViewCache path=%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2224
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2226
    const-string v0, "NewsFullManager"

    const-string v1, "clearWebViewCache file is not exist"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2227
    invoke-direct {p0, v6}, Lcom/meizu/flyme/media/news/lite/f;->a(Z)V

    goto :goto_0

    .line 2230
    :cond_2
    invoke-direct {p0, v1}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/io/File;)V

    .line 2231
    invoke-direct {p0, v6}, Lcom/meizu/flyme/media/news/lite/f;->a(Z)V

    goto :goto_0
.end method

.method public c(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 3
    .param p1    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 628
    if-nez p1, :cond_0

    .line 629
    const-string v0, "NewsFullManager"

    const-string v1, "moreCardArticles request data is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :goto_0
    return-void

    .line 632
    :cond_0
    if-nez p2, :cond_1

    .line 633
    const-string v0, "NewsFullManager"

    const-string v1, "moreCardArticles handler is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, -0x1

    .line 638
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/f$b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->m(I)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    .line 641
    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 642
    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v0

    .line 646
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public d(I)I
    .locals 2

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-nez v1, :cond_1

    .line 375
    :cond_0
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->showTime:I

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.meizu.assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)I
    .locals 2

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    if-nez v1, :cond_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;->openType:I

    goto :goto_0
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    const-class v0, Lcom/meizu/flyme/media/news/lite/NewsLiteDetailActivity;

    return-object v0
.end method

.method public f(I)I
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    if-nez v1, :cond_1

    .line 391
    :cond_0
    const/4 v0, -0x1

    .line 393
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->moreConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    iget v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;->openCategoryId:I

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    :goto_0
    if-eqz v0, :cond_0

    .line 497
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->v:Ljava/lang/String;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->v:Ljava/lang/String;

    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public g()I
    .locals 4

    .prologue
    .line 504
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 505
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/f;->w:I

    .line 516
    :cond_0
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f;->w:I

    return v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 398
    if-nez v0, :cond_0

    .line 399
    const-string v0, ""

    .line 401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->algoVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public h(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    .line 407
    const-string v0, ""

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->mainChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public i(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    if-nez v1, :cond_1

    .line 416
    :cond_0
    const-string v0, ""

    .line 418
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->articleDetailAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    .line 2284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->y:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    .line 2285
    if-eqz v0, :cond_0

    .line 2286
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b()V

    .line 2287
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2288
    const/4 v0, 0x1

    .line 2290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    const-string v0, ""

    .line 436
    :goto_0
    return-object v0

    .line 427
    :cond_1
    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->videoListAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 429
    iget-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->videoListAdPos:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 431
    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->videoListAdLength:I

    .line 432
    new-instance v3, Lcom/alibaba/fastjson/e;

    invoke-direct {v3}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 433
    const-string v4, "videoRelatedAdIds"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v2, "videoRelatedIndex"

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "videoRelatedDuration"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {v3}, Lcom/alibaba/fastjson/e;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public k(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    if-nez v1, :cond_1

    .line 443
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    :goto_0
    return-object v0

    .line 445
    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->adId:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public l(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/f;->o(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    if-nez v1, :cond_1

    .line 453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    :goto_0
    return-object v0

    .line 455
    :cond_1
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;->adConfig:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;->adPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public m(I)Lcom/meizu/flyme/media/news/lite/b;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/b;

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(I)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_0
    return-void
.end method
