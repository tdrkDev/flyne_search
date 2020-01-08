.class public final Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
.super Lcom/meizu/flyme/media/news/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;,
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;,
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;,
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;,
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$OpenTypeEnum;,
        Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$TypeEnum;
    }
.end annotation


# static fields
.field public static final OPEN_TYPE_H5:I = 0x2

.field public static final OPEN_TYPE_JSON:I = 0x1

.field public static final TYPE_AD:I = 0x3

.field public static final TYPE_ARTICLE:I = 0x0

.field public static final TYPE_MANUAL_ARTICLE:I = 0x2

.field public static final TYPE_TOPIC:I = 0x1


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/meizu/advertise/api/a;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/meizu/advertise/api/a;I)V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 240
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    .line 241
    iput p2, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    .line 242
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->G:Lcom/meizu/advertise/api/a;

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lcom/meizu/advertise/api/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    .line 246
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 63
    iput v8, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 109
    iput v2, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    .line 110
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    .line 111
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->f:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getContentId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    .line 114
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    .line 115
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->h:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    .line 118
    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->v:J

    .line 119
    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->u:J

    .line 120
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsAddTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->t:J

    .line 121
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsChangeTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->w:Z

    .line 122
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsExposeTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->x:Z

    .line 123
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsReadTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    .line 124
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    iget-object v3, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 125
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->z:I

    .line 126
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->A:I

    .line 127
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->B:I

    .line 128
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->C:I

    .line 129
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->D:Ljava/lang/String;

    .line 130
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->E:I

    .line 131
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$1;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$1;-><init>(Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    invoke-static {v0, v3}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 139
    :cond_0
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    const-class v3, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    .line 144
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->realLogUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->l:Ljava/lang/String;

    .line 145
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->showUrl:Ljava/util/List;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->n:Ljava/util/List;

    .line 146
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->clickUrl:Ljava/util/List;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->m:Ljava/util/List;

    .line 147
    iget v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->needClickEvent:I

    iput v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->o:I

    .line 148
    iget v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->needExposureEvent:I

    iput v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->p:I

    .line 149
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->recoId:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->q:Ljava/lang/String;

    .line 150
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->disLike:Ljava/util/List;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->r:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 156
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 157
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 164
    :goto_4
    return-void

    :cond_2
    move v0, v2

    .line 121
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 122
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 123
    goto/16 :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v3, "NewsFullArticleBean"

    const-string v4, "fail to parse extend=%s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 161
    :cond_5
    iput v8, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 162
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    goto :goto_4
.end method

.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 63
    iput v7, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 167
    iput v7, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    .line 168
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    .line 169
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->f:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getContentId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    .line 172
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpId()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    .line 173
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->h:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    .line 176
    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->v:J

    .line 177
    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->u:J

    .line 178
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsAddTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->t:J

    .line 179
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsChangeTime()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->w:Z

    .line 180
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsExposeTime()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->x:Z

    .line 181
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsReadTime()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    .line 182
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    iget-object v3, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 183
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->z:I

    .line 184
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->A:I

    .line 185
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->B:I

    .line 186
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->C:I

    .line 187
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->D:Ljava/lang/String;

    .line 188
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->E:I

    .line 189
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;->bigImgInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$2;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$2;-><init>(Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    invoke-static {v0, v3}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 197
    :cond_0
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    const-class v3, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    .line 202
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->realLogUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->l:Ljava/lang/String;

    .line 203
    iget-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->showUrl:Ljava/util/List;

    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->n:Ljava/util/List;

    .line 204
    iget-object v0, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;->clickUrl:Ljava/util/List;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->m:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpId()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 210
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 211
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 218
    :goto_4
    return-void

    :cond_2
    move v0, v2

    .line 179
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 180
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 181
    goto/16 :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v3, "NewsFullArticleBean"

    const-string v4, "fail to parse extend=%s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 215
    :cond_5
    iput v7, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 216
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    iget-object v1, p1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    goto :goto_4
.end method

.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/a;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 221
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    .line 222
    iget v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->type:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    .line 223
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getContentId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    .line 225
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpId()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    .line 226
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->lable:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 229
    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->createDate:J

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->v:J

    .line 230
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsAddTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->t:J

    .line 231
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsChangeTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->w:Z

    .line 232
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsExposeTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->x:Z

    .line 233
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsReadTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    .line 234
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->headImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->headImageUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 237
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 231
    goto :goto_0

    :cond_2
    move v0, v2

    .line 232
    goto :goto_1

    :cond_3
    move v1, v2

    .line 233
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 400
    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 700
    if-ne p0, p1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 703
    :cond_1
    instance-of v2, p1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    if-nez v2, :cond_2

    move v0, v1

    .line 704
    goto :goto_0

    .line 706
    :cond_2
    check-cast p1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 707
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 708
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 709
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getOpenType()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getOpenType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 710
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 711
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 712
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 713
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getPublishDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getPublishDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAdData()Lcom/meizu/advertise/api/a;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->G:Lcom/meizu/advertise/api/a;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->E:I

    return v0
.end method

.method public getClickUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    return-wide v0
.end method

.method public getCpEntityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    return v0
.end method

.method public getCreateTimeMillis()J
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->v:J

    return-wide v0
.end method

.method public getEntityUniqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExposeUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->n:Ljava/util/List;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getExtent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getManualPosition()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->C:I

    return v0
.end method

.method public getManualShowType()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->B:I

    return v0
.end method

.method public getOpenType()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    return v0
.end method

.method public getPublishDate()Ljava/util/Date;
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->u:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublishTimeMillis()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->u:J

    return-wide v0
.end method

.method public getRealLogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReserveH5Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 378
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 379
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 382
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStorageTimeMillis()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->t:J

    return-wide v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 365
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoDuration()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->z:I

    return v0
.end method

.method public getVideoPlayCount()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->A:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 723
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getOpenType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 724
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpEntityId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 725
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getPublishDate()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 726
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 723
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->w:Z

    return v0
.end method

.method public isExposed()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->x:Z

    return v0
.end method

.method public isNeedClickEvent()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->o:I

    return v0
.end method

.method public isNeedExposureEvent()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->p:I

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    return v0
.end method

.method public setAdData(Lcom/meizu/advertise/api/a;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->G:Lcom/meizu/advertise/api/a;

    .line 696
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->h:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 622
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->E:I

    .line 623
    return-void
.end method

.method public setChanged(Z)V
    .locals 0

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->w:Z

    .line 508
    return-void
.end method

.method public setClickUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->m:Ljava/util/List;

    .line 542
    return-void
.end method

.method public setContentId(J)V
    .locals 1

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    .line 302
    return-void
.end method

.method public setCpEntityId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setCpId(I)V
    .locals 0

    .prologue
    .line 413
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    .line 414
    return-void
.end method

.method public setCreateTimeMillis(J)V
    .locals 1

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->v:J

    .line 456
    return-void
.end method

.method public setEntityUniqId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->f:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setExposeUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->n:Ljava/util/List;

    .line 550
    return-void
.end method

.method public setExposed(Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->x:Z

    .line 495
    return-void
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->s:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 469
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setManualPosition(I)V
    .locals 0

    .prologue
    .line 583
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->C:I

    .line 584
    return-void
.end method

.method public setManualShowType(I)V
    .locals 0

    .prologue
    .line 570
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->B:I

    .line 571
    return-void
.end method

.method public setNeedClickEvent(I)V
    .locals 0

    .prologue
    .line 648
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->o:I

    .line 649
    return-void
.end method

.method public setNeedExposureEvent(I)V
    .locals 0

    .prologue
    .line 661
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->p:I

    .line 662
    return-void
.end method

.method public setOpenType(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    .line 289
    return-void
.end method

.method public setPublishTimeMillis(J)V
    .locals 1

    .prologue
    .line 437
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->u:J

    .line 438
    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    .line 534
    return-void
.end method

.method public setRealLogUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->l:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->D:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setStorageTimeMillis(J)V
    .locals 1

    .prologue
    .line 520
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->t:J

    .line 521
    return-void
.end method

.method public setSubType(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    .line 275
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    .line 262
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .prologue
    .line 596
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->z:I

    .line 597
    return-void
.end method

.method public setVideoPlayCount(I)V
    .locals 0

    .prologue
    .line 609
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->A:I

    .line 610
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x27

    .line 732
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->a:I

    packed-switch v0, :pswitch_data_0

    .line 750
    const-string v0, "Article"

    .line 754
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "JSON"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->y:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->F:Ljava/util/List;

    .line 758
    invoke-static {v1}, Lcom/meizu/flyme/media/news/a/c;->b(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    return-object v0

    .line 734
    :pswitch_0
    const-string v0, "Article"

    goto/16 :goto_0

    .line 738
    :pswitch_1
    const-string v0, "Topic"

    goto/16 :goto_0

    .line 742
    :pswitch_2
    const-string v0, "ManualArticle"

    goto/16 :goto_0

    .line 746
    :pswitch_3
    const-string v0, "AD"

    goto/16 :goto_0

    .line 754
    :cond_0
    const-string v0, "H5"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    goto :goto_2

    .line 732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
