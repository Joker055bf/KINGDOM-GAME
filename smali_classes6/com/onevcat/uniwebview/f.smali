.class public final Lcom/onevcat/uniwebview/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/onevcat/uniwebview/g;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/g;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/f;->a:Lcom/onevcat/uniwebview/g;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    .line 1
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lcom/onevcat/uniwebview/f;->a:Lcom/onevcat/uniwebview/g;

    .line 4
    iget-object p2, p2, Lcom/onevcat/uniwebview/g;->g:Ljava/util/HashMap;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onevcat/uniwebview/internal/obfuscated/k;

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p2, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 13
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    .line 14
    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const-string v5, "download"

    .line 15
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 16
    instance-of v7, v5, Landroid/app/DownloadManager;

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, "-1"

    if-eqz v7, :cond_4

    .line 17
    check-cast v5, Landroid/app/DownloadManager;

    invoke-virtual {v5, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 18
    iget-object v5, p0, Lcom/onevcat/uniwebview/f;->a:Lcom/onevcat/uniwebview/g;

    .line 19
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "status"

    .line 20
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 21
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v10, 0x8

    if-ne v7, v10, :cond_2

    .line 22
    iget-object v7, v5, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    if-eqz v7, :cond_0

    .line 23
    invoke-virtual {v7}, Landroid/widget/Toast;->cancel()V

    .line 24
    :cond_0
    iget-object v7, v5, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v9, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_COMPLETED:I

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 26
    iput-object p1, v5, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 30
    iget-object v5, v5, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    .line 31
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {p1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string p1, "file.absolutePath"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "0"

    goto :goto_0

    :cond_2
    const-string p1, "reason"

    .line 35
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 36
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v10, p1

    .line 40
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 42
    :cond_4
    :goto_1
    iget-boolean p1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/k;->c:Z

    if-eqz p1, :cond_5

    .line 43
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 44
    invoke-direct {p1, v2, v10, v9, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 45
    iget-object p2, p0, Lcom/onevcat/uniwebview/f;->a:Lcom/onevcat/uniwebview/g;

    .line 46
    iget-object p2, p2, Lcom/onevcat/uniwebview/g;->a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    .line 47
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->n:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "method"

    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "payload"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/onevcat/uniwebview/f;->a:Lcom/onevcat/uniwebview/g;

    .line 149
    iget-object p1, p1, Lcom/onevcat/uniwebview/g;->g:Ljava/util/HashMap;

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
