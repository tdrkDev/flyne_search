.class public Lcom/meizu/advertise/api/IncentiveAd;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/IncentiveAd;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/IncentiveAd;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/IncentiveAd;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 88
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    .line 89
    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 90
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "com.meizu.advertise.api.IncentiveAd.getCurrentPosition"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 168
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 169
    const-string v2, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getCurrentPosition"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 170
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public getMuteMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 195
    const-string v0, "com.meizu.advertise.api.IncentiveAd.getMuteMode"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 200
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 201
    const-string v2, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getMuteMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 202
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public getRemainTime()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 157
    :goto_0
    return-wide v0

    .line 151
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 152
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "getRemainTime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 153
    invoke-interface {v0, v1, v4}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 154
    invoke-interface {v0, v1, v4}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-wide v0, v2

    .line 157
    goto :goto_0
.end method

.method public getShowTime()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 143
    :goto_0
    return-wide v0

    .line 137
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 138
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "getShowTime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 139
    invoke-interface {v0, v1, v4}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 140
    invoke-interface {v0, v1, v4}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-wide v0, v2

    .line 143
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 278
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 283
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 284
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 285
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 294
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 299
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 300
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 301
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMuteMode(Z)V
    .locals 5

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.meizu.advertise.api.IncentiveAd.setMuteMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 185
    const-string v1, "com.meizu.advertise.plugin.views.IncentiveAd"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "setMuteMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 186
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/IncentiveAd;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
