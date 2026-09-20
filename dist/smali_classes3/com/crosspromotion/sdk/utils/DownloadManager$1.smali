.class Lcom/crosspromotion/sdk/utils/DownloadManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/DownloadManager;->downloadFile(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

.field final synthetic val$listener:Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    iput-object p2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$listener:Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DownloadManager downloadFile callbackPendingTaskFinished url is  = "

    const-string v1, "DownloadManager downloadFile addToPendingTask url is  = "

    :try_start_0
    const-class v2, Lcom/crosspromotion/sdk/utils/DownloadManager;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    iget-object v4, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$listener:Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;

    invoke-static {v3, v4, v5}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$200(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$300(Lcom/crosspromotion/sdk/utils/DownloadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DownloadManager downloadFile mActiveTask.contains(url) "

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$300(Lcom/crosspromotion/sdk/utils/DownloadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/ResDownloader;->downloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-class v2, Lcom/crosspromotion/sdk/utils/DownloadManager;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    iget-object v4, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$400(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Ljava/io/File;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$300(Lcom/crosspromotion/sdk/utils/DownloadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadManager downloadFile exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    const-class v0, Lcom/crosspromotion/sdk/utils/DownloadManager;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$400(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Ljava/io/File;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->this$0:Lcom/crosspromotion/sdk/utils/DownloadManager;

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;->access$300(Lcom/crosspromotion/sdk/utils/DownloadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method
