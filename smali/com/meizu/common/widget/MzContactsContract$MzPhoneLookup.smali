.class public final Lcom/meizu/common/widget/MzContactsContract$MzPhoneLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/MzContactsContract$MzContactColumns;
.implements Lcom/meizu/common/widget/MzContactsContract$MzContactOptionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzPhoneLookup"
.end annotation


# static fields
.field public static final CALL_ALLOWED_CONTACT_IDS:Ljava/lang/String; = "call_allowed_contact_ids"

.field public static final CALL_REJECTED_CONTACT_IDS:Ljava/lang/String; = "call_rejected_contact_ids"

.field public static final CALL_REJECTED_EXTRAS:Ljava/lang/String; = "call_rejected_extras"

.field public static final CALL_REJECTED_TYPE:Ljava/lang/String; = "call_rejected_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRejectedExtrasUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "call_rejected_extras"

    const-string v2, "true"

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 286
    return-object v0
.end method

.method public static isPhoneNumberInContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 292
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v7

    .line 295
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 296
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 295
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 301
    if-eqz v1, :cond_4

    .line 302
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    move v0, v6

    .line 307
    :goto_1
    if-eqz v1, :cond_2

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v7, v0

    .line 302
    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    .line 307
    :cond_4
    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 307
    :goto_2
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_5

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 307
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 304
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
