.class Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$1;
.super Landroid/arch/persistence/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/c;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 44
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 49
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 50
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 51
    invoke-interface {p1, v4}, Landroid/arch/persistence/a/f;->a(I)V

    .line 55
    :goto_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p1, v5}, Landroid/arch/persistence/a/f;->a(I)V

    .line 60
    :goto_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 61
    invoke-interface {p1, v6}, Landroid/arch/persistence/a/f;->a(I)V

    .line 65
    :goto_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 66
    invoke-interface {p1, v7}, Landroid/arch/persistence/a/f;->a(I)V

    .line 70
    :goto_4
    const/4 v0, 0x7

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 71
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 72
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 76
    :goto_5
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 77
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 81
    :goto_6
    const/16 v0, 0xa

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 82
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 83
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 87
    :goto_7
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 88
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 92
    :goto_8
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 93
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 97
    :goto_9
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 98
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 102
    :goto_a
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 103
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 107
    :goto_b
    const/16 v0, 0x10

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->status:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 108
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 109
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 113
    :goto_c
    const/16 v0, 0x12

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->authorId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 114
    const/16 v0, 0x13

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 115
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 116
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 120
    :goto_d
    const/16 v0, 0x15

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 121
    const/16 v0, 0x16

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->commentCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 122
    const/16 v0, 0x17

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->shareCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 123
    const/16 v0, 0x18

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->collectCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 124
    const/16 v0, 0x19

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->diggCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 125
    const/16 v0, 0x1a

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->buryCount:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 126
    const/16 v0, 0x1b

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 127
    const/16 v0, 0x1c

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 128
    const/16 v0, 0x1d

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cp_recom_time:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 129
    const/16 v0, 0x1e

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->release_time:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 130
    const/16 v0, 0x1f

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->update_time:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 131
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 132
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 136
    :goto_e
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 137
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 141
    :goto_f
    const/16 v0, 0x22

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->contentSourceId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 142
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 143
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 147
    :goto_10
    const/16 v0, 0x24

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->suggestShowType:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 148
    const/16 v0, 0x25

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 149
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 150
    const/16 v0, 0x26

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 154
    :goto_11
    const/16 v0, 0x27

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 155
    const/16 v0, 0x28

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cpRecomPos:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 157
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v0, :cond_12

    .line 159
    const/16 v0, 0x29

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 164
    :goto_12
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_13

    .line 166
    const/16 v0, 0x2a

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 170
    :goto_13
    const/16 v0, 0x2b

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 171
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 172
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 176
    :goto_14
    const/16 v0, 0x2d

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 177
    const/16 v0, 0x2e

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 178
    const/16 v0, 0x2f

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsAddTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 179
    const/16 v0, 0x30

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsReadTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 180
    const/16 v0, 0x31

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsExposeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 181
    const/16 v0, 0x32

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getNewsChangeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 182
    return-void

    .line 47
    :cond_0
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :cond_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 63
    :cond_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 68
    :cond_4
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 74
    :cond_5
    const/16 v0, 0x8

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 79
    :cond_6
    const/16 v0, 0x9

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 85
    :cond_7
    const/16 v0, 0xb

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 90
    :cond_8
    const/16 v0, 0xc

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 95
    :cond_9
    const/16 v0, 0xd

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 100
    :cond_a
    const/16 v0, 0xe

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 105
    :cond_b
    const/16 v0, 0xf

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 111
    :cond_c
    const/16 v0, 0x11

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 118
    :cond_d
    const/16 v0, 0x14

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 134
    :cond_e
    const/16 v0, 0x20

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 139
    :cond_f
    const/16 v0, 0x21

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 145
    :cond_10
    const/16 v0, 0x23

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 152
    :cond_11
    const/16 v0, 0x26

    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 161
    :cond_12
    const/16 v1, 0x29

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_12

    .line 168
    :cond_13
    const/16 v1, 0x2a

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 174
    :cond_14
    const/16 v0, 0x2c

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_14
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$1;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "INSERT OR IGNORE INTO `manual_articles`(`entityUniqId`,`type`,`title`,`subTitle`,`keyWords`,`keyWords_freq`,`videoDuration`,`desc`,`category`,`categoryId`,`tag`,`source`,`h5Url`,`json_url`,`share_url`,`status`,`author`,`authorId`,`ruleId`,`ruleSign`,`viewCount`,`commentCount`,`shareCount`,`collectCount`,`diggCount`,`buryCount`,`publishTime`,`createTime`,`cp_recom_time`,`release_time`,`update_time`,`extend`,`content`,`contentSourceId`,`requestId`,`suggestShowType`,`manualShowType`,`scheme`,`manualPosition`,`cpRecomPos`,`userInfo`,`imgInfo`,`articleChannelId`,`cpEntityId`,`contentId`,`cpId`,`newsAddTime`,`newsReadTime`,`newsExposeTime`,`newsChangeTime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
