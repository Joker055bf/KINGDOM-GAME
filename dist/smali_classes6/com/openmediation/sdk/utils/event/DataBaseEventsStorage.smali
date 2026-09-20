.class public Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;
.super Lcom/openmediation/sdk/utils/cache/DataBaseHelper;


# static fields
.field private static final DB_COLUMN_EVENT:Ljava/lang/String; = "event"

.field private static final DB_TABLE_NAME:Ljava/lang/String; = "events"

.field private static mInstance:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private getContentValuesForEvent(Lcom/openmediation/sdk/utils/event/Event;)Landroid/content/ContentValues;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/Event;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;
    .locals 2

    const-class v0, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->mInstance:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    if-nez v1, :cond_0

    new-instance v1, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    invoke-direct {v1, p0, p1, p2}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->mInstance:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    :cond_0
    sget-object p0, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->mInstance:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;
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
.method declared-synchronized addEvent(Lcom/openmediation/sdk/utils/event/Event;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->getContentValuesForEvent(Lcom/openmediation/sdk/utils/event/Event;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "Exception while saving events: "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized clearEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clearing events: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/event/Event;

    iget-object v1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const-string v3, "event=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/event/Event;->toJson()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Exception while clearing events: "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createTable()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "events"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "event"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method declared-synchronized loadEvents()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->isRead()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "event"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/openmediation/sdk/utils/event/Event;

    invoke-direct {v3, v2}, Lcom/openmediation/sdk/utils/event/Event;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    const-string v3, "Exception while loading events: "

    invoke-static {v3, v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
