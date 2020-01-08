.class public Lcom/meizu/common/app/SlideNoticeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;,
        Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;,
        Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LONG_DELAY:I = 0xdac

.field private static final MESSAGE_TIMEOUT:I = 0x1

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SlideNoticeManager"


# instance fields
.field private mCurActivity:Landroid/app/Activity;

.field private mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

.field private mNoticeQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;-><init>(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$1;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManager;->handleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V

    return-void
.end method

.method private cancelNotice(I)V
    .locals 3

    .prologue
    .line 165
    const-string v0, "SlideNoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotice index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 167
    iget-object v0, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-interface {v0}, Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;->hide()V

    .line 168
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V

    .line 172
    :cond_0
    return-void
.end method

.method private handleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 3

    .prologue
    .line 155
    const-string v0, "SlideNoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 158
    if-ltz v0, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(I)V

    .line 161
    :cond_0
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I
    .locals 3

    .prologue
    .line 189
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 193
    iget-object v0, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    if-ne v0, p1, :cond_0

    .line 196
    :goto_1
    return v1

    .line 191
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private removeLastActivityRecord()V
    .locals 3

    .prologue
    .line 241
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 244
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 245
    iget-object v0, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    add-int/lit8 v1, v1, -0x1

    .line 243
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method private scheduleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 150
    iget v0, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->duration:I

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0xdac

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 152
    return-void

    .line 150
    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method private showNextNotice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    move-object v1, v0

    .line 125
    :goto_0
    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    const-string v0, "SlideNoticeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, v1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-interface {v0}, Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;->show()V

    .line 129
    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->scheduleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "SlideNoticeManager"

    const-string v3, "catch an exception when showing next notice, it will be romoved from queue"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    if-ltz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    :goto_1
    move-object v1, v0

    .line 143
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V
    .locals 4

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 179
    if-ltz v0, :cond_1

    .line 180
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(I)V

    .line 185
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 183
    :cond_1
    :try_start_1
    const-string v0, "SlideNoticeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notice already cancelled. callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public enqueueNotice(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;I)V
    .locals 4

    .prologue
    .line 90
    const-string v0, "SlideNoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueNotice callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez p2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 99
    :try_start_0
    invoke-direct {p0, p2}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v1

    .line 100
    if-ltz v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 102
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->update(I)V

    move v0, v1

    .line 117
    :goto_1
    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V

    .line 120
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_2
    const/4 v1, 0x0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 107
    iget-object v0, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->message:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_2
    if-nez v0, :cond_3

    .line 111
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    invoke-direct {v0, p1, p3, p2}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;-><init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 112
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public enqueueNoticeInActivity(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;ILandroid/app/Activity;)V
    .locals 4

    .prologue
    .line 202
    const-string v0, "SlideNoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueNoticeInActivity callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mCurActivity:Landroid/app/Activity;

    if-eq v0, p4, :cond_2

    .line 212
    iput-object p4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mCurActivity:Landroid/app/Activity;

    .line 213
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->removeLastActivityRecord()V

    .line 216
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v1

    .line 217
    if-ltz v1, :cond_4

    .line 218
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 219
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->update(I)V

    move v0, v1

    .line 234
    :goto_1
    if-nez v0, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V

    .line 237
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_4
    const/4 v1, 0x0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 223
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 224
    iget-object v0, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->message:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_2
    if-nez v0, :cond_5

    .line 228
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;-><init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;Landroid/app/Activity;)V

    .line 229
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method
