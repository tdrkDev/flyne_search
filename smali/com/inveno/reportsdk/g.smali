.class Lcom/inveno/reportsdk/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "data_sdk"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE report_data (_id INTEGER PRIMARY KEY AUTOINCREMENT, product_id TEXT, promotion TEXT, fuid TEXT, uid TEXT, app_ver TEXT, sdk_ver TEXT, api_ver TEXT, tk TEXT, report_time TEXT, network TEXT, sid TEXT, seq TEXT, imei TEXT, aid TEXT, brand TEXT, model TEXT, osv TEXT, platform TEXT, language TEXT, app_lan TEXT, mcc TEXT, mnc TEXT, nmcc TEXT, nmnc TEXT, upack TEXT, referrer TEXT, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const-string v0, "CREATE TABLE report_data (_id INTEGER PRIMARY KEY AUTOINCREMENT, product_id TEXT, promotion TEXT, fuid TEXT, uid TEXT, app_ver TEXT, sdk_ver TEXT, api_ver TEXT, tk TEXT, report_time TEXT, network TEXT, sid TEXT, seq TEXT, imei TEXT, aid TEXT, brand TEXT, model TEXT, osv TEXT, platform TEXT, language TEXT, app_lan TEXT, mcc TEXT, mnc TEXT, nmcc TEXT, nmnc TEXT, upack TEXT, referrer TEXT, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
