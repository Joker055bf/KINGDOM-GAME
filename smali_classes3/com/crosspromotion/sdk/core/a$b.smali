.class Lcom/crosspromotion/sdk/core/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/crosspromotion/sdk/bean/AdBean;

.field final synthetic c:Lcom/crosspromotion/sdk/core/a;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/core/a;ILcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->c:Lcom/crosspromotion/sdk/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/crosspromotion/sdk/core/a$b;->a:I

    iput-object p3, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const/16 v0, 0xd5

    if-nez p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getFailed()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getSuccess()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    const-string v2, "file://"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/crosspromotion/sdk/bean/AdBean;->replaceOnlineResToLocal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lcom/crosspromotion/sdk/core/a$b;->a:I

    iget-object p2, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getSuccess()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getFailed()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getFailed()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->c:Lcom/crosspromotion/sdk/core/a;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->c:Lcom/crosspromotion/sdk/core/a;

    iget-object p2, p0, Lcom/crosspromotion/sdk/core/a$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    iput-object p2, p1, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/crosspromotion/sdk/bean/AdBean;->setFillTime(J)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->c:Lcom/crosspromotion/sdk/core/a;

    iget-object p2, p1, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p1, p2}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/bean/AdBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "CrossPromotion AbstractAdsManager DownloadRes error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a$b;->c:Lcom/crosspromotion/sdk/core/a;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_2
    :goto_1
    return-void
.end method
