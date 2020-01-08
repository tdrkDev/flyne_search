.class public Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory;->mThreadPriority:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory;->mThreadPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 50
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method
