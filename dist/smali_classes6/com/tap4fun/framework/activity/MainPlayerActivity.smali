.class public Lcom/tap4fun/framework/activity/MainPlayerActivity;
.super Lcom/google/firebase/MessagingUnityPlayerActivity;
.source "MainPlayerActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private prevExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->stopped:Z

    return-void
.end method

.method private checkFirstRun()V
    .locals 5

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 64
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "T4FFrameworkPrefs"

    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "version_code"

    const/4 v3, -0x1

    .line 71
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->clearUnityIL2CPPCache()V

    return-void

    :cond_0
    if-ne v4, v3, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->clearUnityIL2CPPCache()V

    goto :goto_0

    :cond_1
    if-le v0, v4, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->clearUnityIL2CPPCache()V

    .line 92
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :catch_0
    return-void
.end method

.method private clearUnityIL2CPPCache()V
    .locals 3

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "il2cpp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private customUncaughtExceptionHandler()V
    .locals 2

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->prevExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 113
    invoke-direct {p0, v3}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "activity"

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 183
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 184
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 185
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static initWebViewDataDirectory(Landroid/content/Context;)V
    .locals 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 203
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private restartActivityInNewProcess()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->stopped:Z

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    .line 154
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 212
    invoke-virtual {p0, p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->webViewSetPath(Landroid/content/Context;)V

    return-void
.end method

.method public gameClose()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->finishAffinity()V

    .line 166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 167
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->customUncaughtExceptionHandler()V

    .line 31
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onStart()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->stopped:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onStop()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->stopped:Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 127
    instance-of v0, p2, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->gameClose()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/tap4fun/framework/activity/MainPlayerActivity;->prevExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public webViewSetPath(Landroid/content/Context;)V
    .locals 2

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 218
    invoke-static {p1}, Lcom/tap4fun/framework/utils/WebViewUtil;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "kongdom_webview"

    .line 220
    invoke-virtual {p0, v0, p1}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
