.class public Lcom/openmediation/sdk/utils/cache/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static instance:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;


# instance fields
.field protected mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getSingleton(Landroid/content/Context;Ljava/lang/String;I)Lcom/openmediation/sdk/utils/cache/DataBaseHelper;
    .locals 2

    const-class v0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->instance:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    invoke-direct {v1, p0, p1, p2}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->instance:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    :cond_0
    sget-object p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->instance:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DataBaseHelper"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    throw p1
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method rawQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    new-array v2, p1, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-array v2, p1, [Ljava/lang/String;

    :goto_1
    if-ge v3, p1, :cond_4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "DataBaseHelper"

    invoke-static {v2, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    return-object v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->close()V

    throw p1
.end method
