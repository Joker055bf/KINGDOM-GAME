.class abstract Lcom/flexionmobile/fdk/FlexionBridge;
.super Ljava/lang/Object;


# static fields
.field private static final FLEXION_DEX:Ljava/lang/String; = "flexion.dex"

.field private static final LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

.field private static final TAG:Ljava/lang/String; = "FlexionBridge"

.field private static final TEST_BILLING_MODULE_CLASS:Ljava/lang/String; = "com.flexionmobile.fdk.FDKTestBillingService"

.field private static final TEST_CHANNEL_INFO_MODULE_CLASS:Ljava/lang/String; = "com.flexionmobile.fdk.FDKTestChannelInfoService"

.field private static final TEST_CORE_MODULE_CLASS:Ljava/lang/String; = "com.flexionmobile.fdk.FDKTestCoreService"

.field private static final billingModuleReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/flexionmobile/fdk/BillingServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static final channelInfoModuleReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static final coreModuleReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/flexionmobile/fdk/CoreServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "FlexionBridge"

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->coreModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->billingModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->channelInfoModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->makeBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Could not create billing module"

    invoke-virtual {v0, v1, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static createChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->makeChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Could not create channel info module"

    invoke-virtual {v0, v1, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static createCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->makeCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Could not create core module!"

    invoke-virtual {v0, v1, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static createInMemoryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "flexion.dex"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v1, Ldalvik/system/InMemoryDexClassLoader;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-class v3, Lcom/flexionmobile/fdk/FlexionBridge;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/InMemoryDexClassLoader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method

.method private static doMakeBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;
    .locals 8

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->billingModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/BillingServiceInternal;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/flexionmobile/fdk/FlexionBridge;->makeLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.flexionmobile.fdk.FDKTestBillingService"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/flexionmobile/fdk/CoreServiceInternal;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->createCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;

    move-result-object p0

    aput-object p0, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/BillingServiceInternal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SDK dex loading time: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private static doMakeChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;
    .locals 6

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->channelInfoModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->makeLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.flexionmobile.fdk.FDKTestChannelInfoService"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SDK dex loading time: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private static doMakeCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;
    .locals 6

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->coreModuleReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/CoreServiceInternal;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->makeLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.flexionmobile.fdk.FDKTestCoreService"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SDK dex loading time: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private static getCacheCodeDirLegacy(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/flexionmobile/fdk/FlexionBridge;->mkdirChecked(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->mkdirChecked(Ljava/io/File;)V

    return-object p0
.end method

.method private static getCodeCacheDir(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getSecondaryDir(Ljava/io/File;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "plugin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/flexionmobile/fdk/FlexionBridge;->mkdirChecked(Ljava/io/File;)V

    return-object v0
.end method

.method private static declared-synchronized makeBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;
    .locals 4

    const-class v0, Lcom/flexionmobile/fdk/FlexionBridge;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/flexionmobile/fdk/BillingServiceInternal;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->doMakeBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v2, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v3, "Can\'t load Plugin Dex. Please, check that plugin.dex is inside of assets folder."

    invoke-virtual {v2, v3, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Context can\'t be null"

    invoke-virtual {p0, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized makeChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;
    .locals 4

    const-class v0, Lcom/flexionmobile/fdk/FlexionBridge;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->doMakeChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v2, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v3, "Can\'t load Plugin Dex. Please, check that plugin.dex is inside of assets folder."

    invoke-virtual {v2, v3, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Context can\'t be null"

    invoke-virtual {p0, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized makeCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;
    .locals 4

    const-class v0, Lcom/flexionmobile/fdk/FlexionBridge;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/flexionmobile/fdk/CoreServiceInternal;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->doMakeCoreModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/CoreServiceInternal;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v2, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v3, "Can\'t load Plugin Dex. Please, check that plugin.dex is inside of assets folder."

    invoke-virtual {v2, v3, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Context can\'t be null"

    invoke-virtual {p0, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static makeLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 9

    sget-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->createInMemoryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    sput-object p0, Lcom/flexionmobile/fdk/FlexionBridge;->loader:Ljava/lang/ClassLoader;

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/flexionmobile/fdk/FlexionBridge;->getCodeCacheDir(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/flexionmobile/fdk/FlexionBridge;->getSecondaryDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flexion.dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "optimized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/flexionmobile/fdk/FlexionBridge;->mkdirChecked(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, v1, v2, v5, p0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->loader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, v1, v2, v5, p0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/flexionmobile/fdk/FlexionBridge;->loader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4
    :goto_1
    sget-object p0, Lcom/flexionmobile/fdk/FlexionBridge;->loader:Ljava/lang/ClassLoader;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v0
.end method

.method private static mkdirChecked(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "Failed to create dir "

    if-nez v1, :cond_0

    sget-object v1, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Parent file is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/flexionmobile/fdk/FlexionBridge;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Parent file is a dir "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", a file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", exists "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", readable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", writable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", create dir result="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
