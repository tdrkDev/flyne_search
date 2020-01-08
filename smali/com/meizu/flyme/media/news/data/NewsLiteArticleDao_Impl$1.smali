.class Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$1;
.super Landroid/arch/persistence/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/c;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 40
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->entityUniqId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 45
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->type:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 46
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1, v4}, Landroid/arch/persistence/a/f;->a(I)V

    .line 51
    :goto_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->subTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 52
    invoke-interface {p1, v5}, Landroid/arch/persistence/a/f;->a(I)V

    .line 56
    :goto_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keyWords:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 57
    invoke-interface {p1, v6}, Landroid/arch/persistence/a/f;->a(I)V

    .line 61
    :goto_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keywordsFreq:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 62
    invoke-interface {p1, v7}, Landroid/arch/persistence/a/f;->a(I)V

    .line 66
    :goto_4
    const/4 v0, 0x7

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->videoDuration:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 67
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->desc:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 68
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 72
    :goto_5
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->category:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 73
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 77
    :goto_6
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->tag:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 78
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 82
    :goto_7
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->source:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 83
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 87
    :goto_8
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->h5Url:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 88
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 92
    :goto_9
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->jsonUrl:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 93
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 97
    :goto_a
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 98
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 102
    :goto_b
    const/16 v0, 0xf

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->status:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 103
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->author:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 104
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 108
    :goto_c
    const/16 v0, 0x11

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->authorId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 109
    const/16 v0, 0x12

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 110
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleSign:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 111
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 115
    :goto_d
    const/16 v0, 0x14

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->pv:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 116
    const/16 v0, 0x15

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->viewCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 117
    const/16 v0, 0x16

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->buryCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 118
    const/16 v0, 0x17

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->diggCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 119
    const/16 v0, 0x18

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 120
    const/16 v0, 0x19

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->collectCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 121
    const/16 v0, 0x1a

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->commentCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 122
    const/16 v0, 0x1b

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->publishTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 123
    const/16 v0, 0x1c

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->releaseTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 124
    const/16 v0, 0x1d

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->cpRecomTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 125
    const/16 v0, 0x1e

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->createTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 126
    const/16 v0, 0x1f

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->updateTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 127
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->extend:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 128
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 132
    :goto_e
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->content:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 133
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 137
    :goto_f
    const/16 v0, 0x22

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->contentSourceId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 138
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->requestId:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 139
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 143
    :goto_10
    const/16 v0, 0x24

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->suggestShowType:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 144
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->scheme:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 145
    const/16 v0, 0x25

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 150
    :goto_11
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->userToString(Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_12

    .line 152
    const/16 v0, 0x26

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 157
    :goto_12
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->imageInfoToString(Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v0, :cond_13

    .line 159
    const/16 v0, 0x27

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 163
    :goto_13
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 164
    const/16 v0, 0x28

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 168
    :goto_14
    const/16 v0, 0x29

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 169
    const/16 v0, 0x2a

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 170
    const/16 v0, 0x2b

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getNewsAddTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 171
    const/16 v0, 0x2c

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getNewsReadTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 172
    const/16 v0, 0x2d

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getNewsExposeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 173
    const/16 v0, 0x2e

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getNewsChangeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 174
    return-void

    .line 43
    :cond_0
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 54
    :cond_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->subTitle:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 59
    :cond_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keyWords:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 64
    :cond_4
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keywordsFreq:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 70
    :cond_5
    const/16 v0, 0x8

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->desc:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 75
    :cond_6
    const/16 v0, 0x9

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->category:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 80
    :cond_7
    const/16 v0, 0xa

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->tag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 85
    :cond_8
    const/16 v0, 0xb

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->source:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 90
    :cond_9
    const/16 v0, 0xc

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->h5Url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 95
    :cond_a
    const/16 v0, 0xd

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->jsonUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 100
    :cond_b
    const/16 v0, 0xe

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 106
    :cond_c
    const/16 v0, 0x10

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->author:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 113
    :cond_d
    const/16 v0, 0x13

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleSign:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 130
    :cond_e
    const/16 v0, 0x20

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->extend:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 135
    :cond_f
    const/16 v0, 0x21

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->content:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 141
    :cond_10
    const/16 v0, 0x23

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->requestId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 147
    :cond_11
    const/16 v0, 0x25

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->scheme:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 154
    :cond_12
    const/16 v1, 0x26

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_12

    .line 161
    :cond_13
    const/16 v1, 0x27

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 166
    :cond_14
    const/16 v0, 0x28

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_14
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$1;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "INSERT OR IGNORE INTO `articles`(`entityUniqId`,`type`,`title`,`subTitle`,`keyWords`,`keywordsFreq`,`videoDuration`,`desc`,`category`,`tag`,`source`,`h5Url`,`jsonUrl`,`shareUrl`,`status`,`author`,`authorId`,`ruleId`,`ruleSign`,`pv`,`viewCount`,`buryCount`,`diggCount`,`shareCount`,`collectCount`,`commentCount`,`publishTime`,`releaseTime`,`cpRecomTime`,`createTime`,`updateTime`,`extend`,`content`,`contentSourceId`,`requestId`,`suggestShowType`,`scheme`,`userInfo`,`imgInfo`,`cpEntityId`,`contentId`,`cpId`,`newsAddTime`,`newsReadTime`,`newsExposeTime`,`newsChangeTime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
